# Coerce lists to security_scheme objects

`as_security_scheme()` turns an existing object into a `security_scheme`
object. It uses the `type` element of such objects to determine which
type of security scheme to construct.

## Usage

``` r
as_security_scheme(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or be a named list, with at least
  an element `type`. The `type` element is processed through
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html),
  and then must be one of "api_key", "oauth2", or "oauth_2".

- ...:

  These dots are for future extensions and must be empty.

## Value

A `security_scheme` object as returned by
[`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md)
or
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md).

## See also

security scheme objects:
[`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md),
[`as_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/as_oauth2_authorization_code_flow.md),
[`as_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/as_oauth2_implicit_flow.md),
[`as_oauth2_security_scheme()`](https://rapid.api2r.org/reference/as_oauth2_security_scheme.md),
[`as_oauth2_token_flow()`](https://rapid.api2r.org/reference/as_oauth2_token_flow.md),
[`as_scopes()`](https://rapid.api2r.org/reference/as_scopes.md),
[`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md),
[`as_security_schemes()`](https://rapid.api2r.org/reference/as_security_schemes.md),
[`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md),
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

components object:
[`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md),
[`as_components()`](https://rapid.api2r.org/reference/as_components.md),
[`as_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/as_oauth2_authorization_code_flow.md),
[`as_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/as_oauth2_implicit_flow.md),
[`as_oauth2_security_scheme()`](https://rapid.api2r.org/reference/as_oauth2_security_scheme.md),
[`as_oauth2_token_flow()`](https://rapid.api2r.org/reference/as_oauth2_token_flow.md),
[`as_reference()`](https://rapid.api2r.org/reference/as_reference.md),
[`as_schema()`](https://rapid.api2r.org/reference/as_schema.md),
[`as_scopes()`](https://rapid.api2r.org/reference/as_scopes.md),
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
as_security_scheme(
  list(
    description = "Account JWT token",
    flows = list(
      password = list(
        scopes = list(
          Catalog = "Access all read-only content",
          Commerce = "Perform account-level transactions",
          Playback = "Allow playback of restricted content",
          Settings = "Modify account settings"
        ),
        tokenUrl = "/account/authorization"
      )
    ),
    type = "oauth2"
  )
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
#>  .. .. @ name       : chr [1:4] "Catalog" "Commerce" "Playback" "Settings"
#>  .. .. @ description: chr [1:4] "Access all read-only content" ...
#>  .. @ token_url  : chr "/account/authorization"
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
as_security_scheme(
  list(
    description = "Profile JWT token",
    flows = list(
      password = list(
        scopes = list(
          Catalog = "Modify profile preferences and activity"
        ),
        tokenUrl = "/account/profile/authorization"
      )
    ),
    type = "oauth2"
  )
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
#>  .. .. @ name       : chr "Catalog"
#>  .. .. @ description: chr "Modify profile preferences and activity"
#>  .. @ token_url  : chr "/account/profile/authorization"
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
as_security_scheme(
  list(
    `in` = "header",
    name = "authorization",
    type = "apiKey"
  )
)
#> <rapid::api_key_security_scheme>
#>  @ parameter_name: chr "authorization"
#>  @ location      : chr "header"
```
