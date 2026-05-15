# Coerce lists to string_replacements

`as_string_replacements()` turns an existing object into a
`string_replacements`. This is in contrast with
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md),
which builds a `string_replacements` from individual properties.

## Usage

``` r
as_string_replacements(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or be a list of named lists, each
  with names "enum", "default", or "description", or names that can be
  coerced to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Additional names are ignored.

- ...:

  These dots are for future extensions and must be empty.

## Value

A `string_replacements` as returned by
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md).

## See also

servers object:
[`as_server_variables()`](https://rapid.api2r.org/reference/as_server_variables.md),
[`as_servers()`](https://rapid.api2r.org/reference/as_servers.md),
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md),
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md),
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)

## Examples

``` r
as_string_replacements()
#> <rapid::string_replacements>
#>  @ name       : chr(0) 
#>  @ default    : chr(0) 
#>  @ enum       : list()
#>  @ description: chr(0) 
as_string_replacements(
  list(
    username = c(
      default = "demo",
      description = "Name of the user."
    ),
    port = list(
      default = "8443",
      enum = c("8443", "443")
    )
  )
)
#> <rapid::string_replacements>
#>  @ name       : chr [1:2] "username" "port"
#>  @ default    : chr [1:2] "demo" "8443"
#>  @ enum       :List of 2
#>  .. $ : NULL
#>  .. $ : chr [1:2] "8443" "443"
#>  @ description: chr [1:2] "Name of the user." NA
```
