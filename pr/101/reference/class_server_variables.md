# A collection of string replacements for multiple servers

A list of string replacements objects, each of which is constructed with
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md).

## Usage

``` r
class_server_variables(...)
```

## Arguments

- ...:

  One or more
  [`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)
  objects, or a list of
  [`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)
  objects.

## Value

A `server_variables` S7 object, which is a validated list of
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)
objects.

## See also

servers object
[`as_server_variables()`](https://rapid.api2r.org/reference/as_server_variables.md),
[`as_servers()`](https://rapid.api2r.org/reference/as_servers.md),
[`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md),
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md),
[`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)

## Examples

``` r
class_server_variables(
  list(class_string_replacements(), class_string_replacements())
)
#> <rapid::server_variables> List of 2
#>  $ : <rapid::string_replacements>
#>   ..@ name       : chr(0) 
#>   ..@ default    : chr(0) 
#>   ..@ enum       : list()
#>   ..@ description: chr(0) 
#>  $ : <rapid::string_replacements>
#>   ..@ name       : chr(0) 
#>   ..@ default    : chr(0) 
#>   ..@ enum       : list()
#>   ..@ description: chr(0) 
```
