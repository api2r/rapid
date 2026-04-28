# An object representing a collection of servers

The object provides connectivity information for the API. The described
servers are intended to be used as the base urls for calls to the API.

## Usage

``` r
class_servers(
  url = character(),
  description = character(),
  variables = class_server_variables()
)
```

## Arguments

- url:

  Character vector (required). The urls of the target hosts. These urls
  support
  [`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md).
  Variable substitutions will be made when a variable is named in
  {brackets}.

- description:

  Character vector (optional). Strings describing the hosts designated
  by `url`. [CommonMark syntax](https://spec.commonmark.org/) may be
  used for rich text representation.

- variables:

  A
  [`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md)
  object.

## Value

A `servers` S7 object, with properties `url`, `description`, and
`variables`.

## See also

servers object
[`as_server_variables()`](https://rapid.api2r.org/reference/as_server_variables.md),
[`as_servers()`](https://rapid.api2r.org/reference/as_servers.md),
[`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md),
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md),
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)

## Examples

``` r
class_servers(
  url = c(
    "https://development.gigantic-server.com/v1",
    "https://staging.gigantic-server.com/v1",
    "https://api.gigantic-server.com/v1"
  ),
  description = c(
    "Development server",
    "Staging server",
    "Production server"
  )
)
#> <rapid::servers>
#>  @ url        : chr [1:3] "https://development.gigantic-server.com/v1" ...
#>  @ description: chr [1:3] "Development server" "Staging server" "Production server"
#>  @ variables  : <rapid::server_variables>  list()
class_servers(
  url = "https://{username}.gigantic-server.com:{port}/{basePath}",
  description = "The production API server",
  variables = class_server_variables(class_string_replacements(
    name = c("username", "port", "basePath"),
    default = c("demo", "8443", "v2"),
    description = c(
      "The active user's folder.",
      NA, NA
    ),
    enum = list(
      NULL,
      c("8443", "443"),
      NULL
    )
  ))
)
#> <rapid::servers>
#>  @ url        : chr "https://{username}.gigantic-server.com:{port}/{basePath}"
#>  @ description: chr "The production API server"
#>  @ variables  : <rapid::server_variables> List of 1
#>  .. $ : <rapid::string_replacements>
#>  ..  ..@ name       : chr [1:3] "username" "port" "basePath"
#>  ..  ..@ default    : chr [1:3] "demo" "8443" "v2"
#>  ..  ..@ enum       :List of 3
#>  .. .. .. $ : NULL
#>  .. .. .. $ : chr [1:2] "8443" "443"
#>  .. .. .. $ : NULL
#>  ..  ..@ description: chr [1:3] "The active user's folder." NA NA
```
