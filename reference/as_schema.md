# Coerce lists to schemas

`as_schema()` turns an existing object into a `schema`. This is in
contrast with
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md),
which builds a `schema` from individual properties.

## Usage

``` r
as_schema(x, ..., arg = caller_arg(x), call = caller_env())
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "type", "nullable",
  "description", and/or "format", or names that can be coerced to those
  names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored. This object should describe a single schema.

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

A `schema` as returned by
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md).

## See also

schema objects
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md)

components object
[`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md),
[`as_components()`](https://rapid.api2r.org/reference/as_components.md),
[`as_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/as_oauth2_authorization_code_flow.md),
[`as_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/as_oauth2_implicit_flow.md),
[`as_oauth2_security_scheme()`](https://rapid.api2r.org/reference/as_oauth2_security_scheme.md),
[`as_oauth2_token_flow()`](https://rapid.api2r.org/reference/as_oauth2_token_flow.md),
[`as_reference()`](https://rapid.api2r.org/reference/as_reference.md),
[`as_scopes()`](https://rapid.api2r.org/reference/as_scopes.md),
[`as_security_scheme()`](https://rapid.api2r.org/reference/as_security_scheme.md),
[`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md),
[`as_security_schemes()`](https://rapid.api2r.org/reference/as_security_schemes.md),
[`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md),
[`class_components()`](https://rapid.api2r.org/reference/class_components.md),
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_reference()`](https://rapid.api2r.org/reference/class_reference.md),
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

## Examples

``` r
as_schema()
#> <rapid::schema>
#>  @ type       : Factor w/ 6 levels "string","number",..: 
#>  .. - attr(*, "initialized")= logi TRUE
#>  @ nullable   : logi(0) 
#>  @ description: chr(0) 
#>  @ format     : chr(0) 
as_schema(
  list(
    type = "string",
    format = "date-time",
    description = "Timestamp when the event will occur."
  )
)
#> <rapid::schema>
#>  @ type       : Factor w/ 6 levels "string","number",..: 1
#>  .. - attr(*, "initialized")= logi TRUE
#>  @ nullable   : logi FALSE
#>  @ description: chr "Timestamp when the event will occur."
#>  @ format     : chr "date-time"
```
