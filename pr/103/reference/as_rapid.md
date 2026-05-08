# Coerce lists and urls to rapid objects

`as_rapid()` turns an existing object into a `rapid` object. This is in
contrast with
[`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md),
which builds a `rapid` object from individual properties.

## Usage

``` r
as_rapid(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "info", "servers",
  "components", "paths", and/or "security", or names that can be coerced
  to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored.
  [`url()`](https://rdrr.io/r/base/connections.html) objects are read
  with
  [`jsonlite::fromJSON()`](https://jeroen.r-universe.dev/jsonlite/reference/fromJSON.html)
  or
  [`yaml::read_yaml()`](https://yaml.r-lib.org/reference/read_yaml.html)
  before conversion.

- ...:

  These dots are for future extensions and must be empty.

## Value

A `rapid` object as returned by
[`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md).

## See also

rapid object:
[`as_api_object()`](https://rapid.api2r.org/reference/as_api_object.md),
[`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md),
[`expand_servers()`](https://rapid.api2r.org/reference/expand_servers.md)

## Examples

``` r
as_rapid()
#> <rapid::rapid>
#>  @ info      : <rapid::info>
#>  .. @ title           : chr(0) 
#>  .. @ version         : chr(0) 
#>  .. @ contact         : <rapid::contact>
#>  .. .. @ name : chr(0) 
#>  .. .. @ email: chr(0) 
#>  .. .. @ url  : chr(0) 
#>  .. @ description     : chr(0) 
#>  .. @ license         : <rapid::license>
#>  .. .. @ name      : chr(0) 
#>  .. .. @ identifier: chr(0) 
#>  .. .. @ url       : chr(0) 
#>  .. @ summary         : chr(0) 
#>  .. @ terms_of_service: chr(0) 
#>  .. @ origin          : <rapid::origin>
#>  .. .. @ url    : chr(0) 
#>  .. .. @ format : chr(0) 
#>  .. .. @ version: chr(0) 
#>  @ servers   : <rapid::servers>
#>  .. @ url        : chr(0) 
#>  .. @ description: chr(0) 
#>  .. @ variables  : <rapid::server_variables>  list()
#>  @ components: <rapid::components>
#>  .. @ security_schemes: <rapid::security_schemes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ details    : <rapid::security_scheme_details>  list()
#>  .. .. @ description: chr(0) 
#>  @ paths     :Classes ‘rapid::paths’, ‘S7_object’ and 'data.frame':  0 obs. of  0 variables
#>  <rapid::paths>  Named list()
#>  .. - attr(*, "dim")= int [1:2] 0 0
#>  @ security  : <rapid::security>
#>  .. @ name                   : chr(0) 
#>  .. @ required_scopes        : list()
#>  .. @ rapid_class_requirement: chr "security_scheme"
```
