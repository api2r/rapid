# Make sure we can parse all apis.guru APIs.

stop("apisguru is broken and can't install, so none of this works")

library(apisguru)
library(dplyr)
library(tidyr)
library(purrr)
library(httr2)
library(yaml)

apisguru_apis <- apisguru::list_apis() |>
  dplyr::select("name", "preferred", "versions") |>
  tidyr::unnest("versions") |>
  dplyr::filter(
    .data$preferred == .data$version,
    # Right now we only check specs that are OpenAPI 3.0+.
    as.numeric_version(openapiVer) >= as.numeric_version("3.0.0")
  ) |>
  dplyr::select("name", "updated", "swaggerUrl")

check_url_exists <- purrr::possibly(
  function(url) {
    url <- utils::URLencode(url)
    httr2::request(url) |>
      httr2::req_method("HEAD") |>
      httr2::req_perform() |>
      httr2::resp_status() |>
      {
        \(status) status < 400
      }()
  },
  otherwise = FALSE
)

as_int_or_int64 <- function(x) {
  tryCatch(
    {
      as.integer(x)
    },
    warning = function(w) {
      if (grepl("integer range", conditionMessage(w))) {
        bit64::as.integer64(x)
      } else {
        warning(w) # Re-throw other warnings
      }
    }
  )
}

safe_read_yaml <- purrr::possibly(
  function(url) {
    url <- utils::URLencode(url)
    yaml::read_yaml(
      url,
      readLines.warn = FALSE,
      handlers = list(
        int = as_int_or_int64
      )
    )
  },
  otherwise = list("bad spec")
)

read_spec_if_valid <- function(url, url_is_valid) {
  if (url_is_valid) {
    return(safe_read_yaml(url))
  }
  return(NULL)
}

swagger_check_old <- readRDS(here::here("data-raw", "swagger_check.rds")) |>
  dplyr::filter(.data$url_is_valid, lengths(.data$spec) > 0)

to_recheck <- apisguru_apis |>
  dplyr::anti_join(swagger_check_old, by = c("name", "updated"))

swagger_check <- swagger_check_old

if (nrow(to_recheck)) {
  swagger_check <- to_recheck |>
    dplyr::mutate(
      url_is_valid = purrr::map_lgl(
        .data$swaggerUrl,
        check_url_exists,
        .progress = TRUE
      ),
      spec = purrr::map2(
        .data$swaggerUrl,
        .data$url_is_valid,
        read_spec_if_valid,
        .progress = TRUE
      )
    )

  swagger_check <- dplyr::bind_rows(
    swagger_check_old,
    swagger_check
  ) |>
    dplyr::arrange(.data$name, dplyr::desc(.data$updated)) |>
    dplyr::distinct(.data$name, .keep_all = TRUE)

  saveRDS(swagger_check, here::here("data-raw", "swagger_check.rds"))
}

# Two of them have control characters and yaml can't parse them.

safe_tibblify <- purrr::possibly(
  tibblify::parse_openapi_spec,
  otherwise = NULL
)

check_can_tibblify <- function(spec) {
  !is.null(safe_tibblify(spec))
}

tibblify_check_old <- readRDS(here::here("data-raw", "tibblify_check.rds"))

swagger_check_subset <- swagger_check |>
  dplyr::filter(lengths(spec) > 0) |>
  # Skip Amazon apis for now to try to get past the error(s).
  dplyr::filter(!stringr::str_starts(name, "amazon")) |>
  # And others.
  dplyr::filter(name != "api.video")

n <- 10L

to_tibblify <- swagger_check_subset |>
  dplyr::anti_join(tibblify_check_old, by = c("name", "updated")) |>
  head(n)

while (nrow(to_tibblify)) {
  cli::cli_inform("Another {n}!")
  tibblify_check <- to_tibblify |>
    dplyr::mutate(
      can_tibblify = purrr::map_lgl(
        .data$spec,
        check_can_tibblify,
        .progress = TRUE
      )
    ) |>
    dplyr::select("name", "updated", "spec", "can_tibblify")
  tibblify_check <- dplyr::bind_rows(
    tibblify_check_old,
    tibblify_check
  ) |>
    dplyr::arrange(.data$name, dplyr::desc(.data$updated)) |>
    dplyr::distinct(.data$name, .keep_all = TRUE)

  saveRDS(tibblify_check, here::here("data-raw", "tibblify_check.rds"))

  tibblify_check_old <- tibblify_check
  to_tibblify <- swagger_check_subset |>
    dplyr::anti_join(tibblify_check_old, by = c("name", "updated")) |>
    head(n)
}

tibblify_check |>
  dplyr::filter(!can_tibblify)

# TODO:
# * Run api.video manually and try to get rid of the "nested too deeply" errors in tibblify.
# * Intelligently try to tibblify ones that don't have tibblify data.
# * Retry things that have changed since save.
# * Try to rapid if tibblify succeeds.
