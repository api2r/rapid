# Coerce lists to server_variables

`as_server_variables()` turns an existing object into a
`server_variables` object. This is in contrast with
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md),
which builds a `server_variables` object from individual properties.

## Usage

``` r
as_server_variables(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or be a list of objects that can
  be coerced to `string_replacements` objects via
  [`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md).

- ...:

  These dots are for future extensions and must be empty.

## Value

A `server_variables` object as returned by
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md).

## See also

servers object
[`as_servers()`](https://rapid.api2r.org/reference/as_servers.md),
[`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md),
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md),
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md),
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)

## Examples

``` r
as_server_variables()
#> <rapid::server_variables>  list()
as_server_variables(
  list(
    list(
      username = c(default = "demo", description = "Name of the user.")
    ),
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
)
#> <rapid::server_variables> List of 2
#>  $ : <rapid::string_replacements>
#>   ..@ name       : chr "username"
#>   ..@ default    : chr "demo"
#>   ..@ enum       : list()
#>   ..@ description: chr "Name of the user."
#>  $ : <rapid::string_replacements>
#>   ..@ name       : chr [1:2] "username" "port"
#>   ..@ default    : chr [1:2] "demo" "8443"
#>   ..@ enum       :List of 2
#>  .. .. $ : NULL
#>  .. .. $ : chr [1:2] "8443" "443"
#>   ..@ description: chr [1:2] "Name of the user." NA
```
