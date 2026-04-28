# Coerce lists and character vectors to origin

`as_origin()` turns an existing object into an `origin`. This is in
contrast with
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md),
which builds an `origin` from individual properties.

## Usage

``` r
as_origin(x, ..., arg = caller_arg(x), call = caller_env())
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "url", "format",
  and/or "version", or names that can be coerced to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored. This object should describe a single origin
  for this API description.

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

An `origin` as returned by
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md).

## See also

info object
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
as_origin()
#> <rapid::origin>
#>  @ url    : chr(0) 
#>  @ format : chr(0) 
#>  @ version: chr(0) 
as_origin(
  list(
    list(
      format = "openapi",
      url = "https://api.open.fec.gov/swagger/",
      version = "3.0"
    )
  )
)
#> <rapid::origin>
#>  @ url    : chr "https://api.open.fec.gov/swagger/"
#>  @ format : chr "openapi"
#>  @ version: chr "3.0"
```
