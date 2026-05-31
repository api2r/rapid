# Coerce lists to as_security objects

`as_security()` turns an existing object into a `security` object. This
is in contrast with
[`class_security()`](https://rapid.api2r.org/reference/class_security.md),
which builds a `security` from individual properties.

## Usage

``` r
as_security(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or be a list containing a single
  list named "security_schemes", or a name that can be coerced to
  "security_schemes" via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Additional names are ignored.

- ...:

  These dots are for future extensions and must be empty.

## Value

A `security` object as returned by
[`class_security()`](https://rapid.api2r.org/reference/class_security.md).

## See also

security object:
[`class_security()`](https://rapid.api2r.org/reference/class_security.md)

## Examples

``` r
as_security()
#> <rapid::security>
#>  @ name                   : chr(0) 
#>  @ required_scopes        : list()
#>  @ rapid_class_requirement: chr "security_scheme"
as_security(
  list(
    list(
      oauth2 = c("user", "user:email", "user:follow")
    ),
    list(internalApiKey = list())
  )
)
#> <rapid::security>
#>  @ name                   : chr [1:2] "oauth2" "internalApiKey"
#>  @ required_scopes        :List of 2
#>  .. $ : chr [1:3] "user" "user:email" "user:follow"
#>  .. $ : chr(0) 
#>  @ rapid_class_requirement: chr "security_scheme"
```
