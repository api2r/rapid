# OAuth2 authorization code flow object

An `oauth2_authorization_code_flow` object describes the configuration
for the OAuth Authorization Code flow. Previously called `accessCode` in
OpenAPI 2.0.

## Usage

``` r
class_oauth2_authorization_code_flow(
  authorization_url = character(),
  token_url = character(),
  ...,
  refresh_url = character(),
  scopes = class_scopes()
)
```

## Arguments

- authorization_url:

  Character vector (required). The authorization URL to be used for this
  flow. This must be in the form of a URL. The OAuth2 standard requires
  the use of TLS.

- token_url:

  Character vector (required). The token URL to be used for this flow.
  This must be in the form of a URL. The OAuth2 standard requires the
  use of TLS.

- ...:

  These dots are for future extensions and must be empty.

- refresh_url:

  Character scalar (optional). The URL to be used for obtaining refresh
  tokens. This must be in the form of a URL. The OAuth2 standard
  requires the use of TLS.

- scopes:

  An optional
  [`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md)
  object with the available scopes for the OAuth2 security scheme.

## Value

An `oauth2_authorization_code_flow` S7 object, with fields
`authorization_url`, `token_url`, `refresh_url`, and `scopes`.

## See also

security scheme objects:
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
[`as_security_scheme()`](https://rapid.api2r.org/reference/as_security_scheme.md),
[`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md),
[`as_security_schemes()`](https://rapid.api2r.org/reference/as_security_schemes.md),
[`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md),
[`class_components()`](https://rapid.api2r.org/reference/class_components.md),
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
class_oauth2_authorization_code_flow(
  authorization_url = "https://example.com/authorize",
  token_url = "https://example.com/token",
  refresh_url = "https://example.com/refresh",
  scopes = class_scopes(
    name = c("server:read", "server:write"),
    description = c("Read server settings", "Write server settings")
  )
)
#> <rapid::oauth2_authorization_code_flow>
#>  @ refresh_url      : chr "https://example.com/refresh"
#>  @ scopes           : <rapid::scopes>
#>  .. @ name       : chr [1:2] "server:read" "server:write"
#>  .. @ description: chr [1:2] "Read server settings" "Write server settings"
#>  @ authorization_url: chr "https://example.com/authorize"
#>  @ token_url        : chr "https://example.com/token"
```
