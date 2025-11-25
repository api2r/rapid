swagger_to_openapi <- function(x) {
  # This isn't right yet, I'm just logging some notes.
  if (is.list(x)) {
    # If it's already openapi 3+, return it.
    if (
      length(x$openapi) &&
      numeric_version(as.character(x$openapi)) >= "3"
    ) {
      return(x)
    }
    # Try to find the spec url so we don't need httr2.
    if (length(x$info$`x-origin`$url)) {
      x <- x$info$`x-origin`$url
    } else {
      rlang::check_installed("httr2", "to convert older api spec to OpenAPI")
      resp <- httr2::request("https://converter.swagger.io/api/convert") |>
        httr2::req_body_json(data = x) |>
        # httr2 will choose post automatically, but make it explicit since this
        # version requires post.
        httr2::req_method("post") |>
        httr2::req_perform() |>
        httr2::resp_body_json()
      return(resp)
    }
  }
  # If it's a URL, we can GET-convert it directly without requiring httr2.
  yaml::read_yaml(
    paste0(
      "https://converter.swagger.io/api/convert?url=",
      x
    ),
    readLines.warn = FALSE
  )
}

.is_swagger_spec <- S7::new_generic(".is_swagger_spec", "x")

S7::method(.is_swagger_spec, class_any) <- function(x,
                                                    ...,
                                                    min_version = character(),
                                                    arg = caller_arg(x),
                                                    call = caller_env()) {
  return(FALSE)
}

S7::method(.is_swagger_spec, class_list) <- function(x,
                                                     min_version = character(),
                                                     arg = caller_arg(x),
                                                     call = caller_env()) {
  version <- x$openapi %||% x$swagger %||% x$swaggerVersion

  # TODO: Split this up. Don't be fancy. This will error if numeric_version
  # fails; instead we should return FALSE if we can't parse the version.
  return(
    length(version) == 1 &&
      (
        !length(min_version) ||
          numeric_version(as.character(version)) >=
          numeric_version(as.character(min_version))
      )
  )
}
