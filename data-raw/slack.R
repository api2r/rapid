swagger_check |>
  dplyr::filter(name == "slack.com") |>
  dplyr::pull(swaggerUrl)

slack_spec <- swagger_check |>
  dplyr::filter(name == "slack.com") |>
  dplyr::pull(spec)
slack_spec <- slack_spec[[1]]

slack_spec$components$securitySchemes$slackAuth |> names()
slack_spec$paths$`/admin.apps.approve`$post$security

slack_paths <- tibblify::parse_openapi_spec(slack_spec)
slack_paths |>
  tidyr::unnest(operations)
