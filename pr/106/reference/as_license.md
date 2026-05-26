# Coerce lists and character vectors to licenses

`as_license()` turns an existing object into a `license`. This is in
contrast with
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
which builds a `license` from individual properties.

## Usage

``` r
as_license(x, ..., arg = caller_arg(x), call = caller_env())
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "name",
  "identifier", and/or "url", or names that can be coerced to those
  names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored. This object should describe a single license.

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

A `license` as returned by
[`class_license()`](https://rapid.api2r.org/reference/class_license.md).

## See also

info object:
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
as_license()
#> <rapid::license>
#>  @ name      : chr(0) 
#>  @ identifier: chr(0) 
#>  @ url       : chr(0) 
as_license(list(name = "Apache 2.0", identifier = "Apache-2.0"))
#> <rapid::license>
#>  @ name      : chr "Apache 2.0"
#>  @ identifier: chr "Apache-2.0"
#>  @ url       : chr(0) 
```
