# OAuth2 security schemes

Defines an OAuth2 security scheme that can be used by the operations.

## Usage

``` r
class_oauth2_security_scheme(
  ...,
  implicit_flow = class_oauth2_implicit_flow(),
  password_flow = class_oauth2_token_flow(),
  client_credentials_flow = class_oauth2_token_flow(),
  authorization_code_flow = class_oauth2_authorization_code_flow()
)
```

## Arguments

- ...:

  These dots are for future extensions and must be empty.

- implicit_flow:

  An `oauth2_implicit_flow` object created with
  [`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md).

- password_flow, client_credentials_flow:

  An `oauth2_token_flow` object created with
  [`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md).

- authorization_code_flow:

  An `oauth2_authorization_code_flow` object created with
  [`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md).

## Value

An `oauth2_security_scheme` S7 object, with fields `implicit_flow`,
`password_flow`, `client_credentials_flow`, and
`authorization_code_flow`.

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
[`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md),
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
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
[`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md),
[`class_components()`](https://rapid.api2r.org/reference/class_components.md),
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_reference()`](https://rapid.api2r.org/reference/class_reference.md),
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

## Examples

``` r
class_oauth2_security_scheme()
#> <rapid::oauth2_security_scheme>
#>  @ implicit_flow          : <rapid::oauth2_implicit_flow>
#>  .. @ refresh_url      : chr(0) 
#>  .. @ scopes           : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ authorization_url: chr(0) 
#>  @ password_flow          : <rapid::oauth2_token_flow>
#>  .. @ refresh_url: chr(0) 
#>  .. @ scopes     : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ token_url  : chr(0) 
#>  @ client_credentials_flow: <rapid::oauth2_token_flow>
#>  .. @ refresh_url: chr(0) 
#>  .. @ scopes     : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ token_url  : chr(0) 
#>  @ authorization_code_flow: <rapid::oauth2_authorization_code_flow>
#>  .. @ refresh_url      : chr(0) 
#>  .. @ scopes           : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ authorization_url: chr(0) 
#>  .. @ token_url        : chr(0) 
class_oauth2_security_scheme(
  password_flow = class_oauth2_token_flow(token_url = "/tokens/passwords")
)
#> <rapid::oauth2_security_scheme>
#>  @ implicit_flow          : <rapid::oauth2_implicit_flow>
#>  .. @ refresh_url      : chr(0) 
#>  .. @ scopes           : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ authorization_url: chr(0) 
#>  @ password_flow          : <rapid::oauth2_token_flow>
#>  .. @ refresh_url: chr(0) 
#>  .. @ scopes     : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ token_url  : chr "/tokens/passwords"
#>  @ client_credentials_flow: <rapid::oauth2_token_flow>
#>  .. @ refresh_url: chr(0) 
#>  .. @ scopes     : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ token_url  : chr(0) 
#>  @ authorization_code_flow: <rapid::oauth2_authorization_code_flow>
#>  .. @ refresh_url      : chr(0) 
#>  .. @ scopes           : <rapid::scopes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ description: chr(0) 
#>  .. @ authorization_url: chr(0) 
#>  .. @ token_url        : chr(0) 
```
