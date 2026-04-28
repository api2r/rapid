# API key security schemes

Defines an API key security scheme that can be used by the operations.

## Usage

``` r
class_api_key_security_scheme(
  parameter_name = character(),
  location = c("query", "header", "cookie")
)
```

## Arguments

- parameter_name:

  Character vector (required). The names of the header, query or cookie
  parameters to be used.

- location:

  Character vector (required). The location of the API key. Valid values
  are "query", "header" or "cookie".

## Value

An `api_key_security_scheme` S7 object, with fields `parameter_name` and
`location`.

## See also

security scheme objects
[`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md),
[`as_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/as_oauth2_authorization_code_flow.md),
[`as_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/as_oauth2_implicit_flow.md),
[`as_oauth2_security_scheme()`](https://rapid.api2r.org/reference/as_oauth2_security_scheme.md),
[`as_oauth2_token_flow()`](https://rapid.api2r.org/reference/as_oauth2_token_flow.md),
[`as_scopes()`](https://rapid.api2r.org/reference/as_scopes.md),
[`as_security_scheme()`](https://rapid.api2r.org/reference/as_security_scheme.md),
[`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md),
[`as_security_schemes()`](https://rapid.api2r.org/reference/as_security_schemes.md),
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

components object
[`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md),
[`as_components()`](https://rapid.api2r.org/reference/as_components.md),
[`as_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/as_oauth2_authorization_code_flow.md),
[`as_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/as_oauth2_implicit_flow.md),
[`as_oauth2_security_scheme()`](https://rapid.api2r.org/reference/as_oauth2_security_scheme.md),
[`as_oauth2_token_flow()`](https://rapid.api2r.org/reference/as_oauth2_token_flow.md),
[`as_reference()`](https://rapid.api2r.org/reference/as_reference.md),
[`as_schema()`](https://rapid.api2r.org/reference/as_schema.md),
[`as_scopes()`](https://rapid.api2r.org/reference/as_scopes.md),
[`as_security_scheme()`](https://rapid.api2r.org/reference/as_security_scheme.md),
[`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md),
[`as_security_schemes()`](https://rapid.api2r.org/reference/as_security_schemes.md),
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
class_api_key_security_scheme(
  parameter_name = "Authorization",
  location = "header"
)
#> <rapid::api_key_security_scheme>
#>  @ parameter_name: chr "Authorization"
#>  @ location      : chr "header"
```
