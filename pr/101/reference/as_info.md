# Coerce lists and character vectors to info objects

`as_info()` turns an existing object into an `info` object. This is in
contrast with
[`class_info()`](https://rapid.api2r.org/reference/class_info.md), which
builds an `info` from individual properties.

## Usage

``` r
as_info(x, ..., arg = caller_arg(x), call = caller_env())
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "title", "version",
  "contact", "description", "license", "summary", "terms_of_service",
  and/or "origin" (or "x-origin", which will be coerced to "origin"), or
  names that can be coerced to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored. This object should describe a single API.

- ...:

  These dots are for future extensions and must be empty.

- arg:

  An argument name as a string. This argument will be mentioned in error
  messages as the input that is at the origin of a problem.

- call:

  The execution environment of a currently running function, e.g.
  [`caller_env()`](https://rlang.r-lib.org/reference/stack.html). The
  function will be mentioned in error messages as the source of the
  error. See the `call` argument of
  [`abort()`](https://rlang.r-lib.org/reference/abort.html) for more
  information.

## Value

An `info` object as returned by
[`class_info()`](https://rapid.api2r.org/reference/class_info.md).

## See also

info object
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
as_info()
#> <rapid::info>
#>  @ title           : chr(0) 
#>  @ version         : chr(0) 
#>  @ contact         : <rapid::contact>
#>  .. @ name : chr(0) 
#>  .. @ email: chr(0) 
#>  .. @ url  : chr(0) 
#>  @ description     : chr(0) 
#>  @ license         : <rapid::license>
#>  .. @ name      : chr(0) 
#>  .. @ identifier: chr(0) 
#>  .. @ url       : chr(0) 
#>  @ summary         : chr(0) 
#>  @ terms_of_service: chr(0) 
#>  @ origin          : <rapid::origin>
#>  .. @ url    : chr(0) 
#>  .. @ format : chr(0) 
#>  .. @ version: chr(0) 
as_info(list(title = "My Cool API", version = "1.0.0"))
#> <rapid::info>
#>  @ title           : chr "My Cool API"
#>  @ version         : chr "1.0.0"
#>  @ contact         : <rapid::contact>
#>  .. @ name : chr(0) 
#>  .. @ email: chr(0) 
#>  .. @ url  : chr(0) 
#>  @ description     : chr(0) 
#>  @ license         : <rapid::license>
#>  .. @ name      : chr(0) 
#>  .. @ identifier: chr(0) 
#>  .. @ url       : chr(0) 
#>  @ summary         : chr(0) 
#>  @ terms_of_service: chr(0) 
#>  @ origin          : <rapid::origin>
#>  .. @ url    : chr(0) 
#>  .. @ format : chr(0) 
#>  .. @ version: chr(0) 
```
