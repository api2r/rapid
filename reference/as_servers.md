# Coerce lists and character vectors to servers

`as_servers()` turns an existing object into a `servers` object. This is
in contrast with
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md),
which builds a `servers` object from individual properties.

## Usage

``` r
as_servers(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "name", "email",
  and/or "url", or names that can be coerced to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored.

- ...:

  These dots are for future extensions and must be empty.

## Value

A `servers` object as returned by
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md).

## See also

servers object
[`as_server_variables()`](https://rapid.api2r.org/reference/as_server_variables.md),
[`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md),
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md),
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md),
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)

## Examples

``` r
as_servers()
#> <rapid::servers>
#>  @ url        : chr(0) 
#>  @ description: chr(0) 
#>  @ variables  : <rapid::server_variables>  list()
as_servers(
  list(
    list(
      url = "https://development.gigantic-server.com/v1",
      description = "Development server"
    ),
    list(
      url = "https://staging.gigantic-server.com/v1",
      description = "Staging server"
    ),
    list(
      url = "https://api.gigantic-server.com/v1",
      description = "Production server"
    )
  )
)
#> <rapid::servers>
#>  @ url        : chr [1:3] "https://development.gigantic-server.com/v1" ...
#>  @ description: chr [1:3] "Development server" "Staging server" "Production server"
#>  @ variables  : <rapid::server_variables>  list()
```
