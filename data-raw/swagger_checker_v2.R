apisguru_apis_v2 <- apisguru::list_apis() |>
  dplyr::select("name", "preferred", "versions") |>
  tidyr::unnest("versions") |>
  dplyr::filter(
    .data$preferred == .data$version,
    openapiVer == "2.0"
  ) |>
  dplyr::select("name", "updated", "swaggerUrl")

swagger_check_v2 <- apisguru_apis_v2 |>
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

saveRDS(swagger_check_v2, here::here("data-raw", "swagger_check_v2.rds"))
