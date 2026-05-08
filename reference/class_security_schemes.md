# Reusable security schemes for an API

The object provides reusable security schemes for the API. These schemes
may be referenced by name in the top-level `security` object or within
`paths` objects.

## Usage

``` r
class_security_schemes(
  name = character(),
  details = class_security_scheme_details(),
  ...,
  description = character()
)
```

## Arguments

- name:

  Character vector (required). Names by which security schemes will be
  referenced.

- details:

  The details of each security scheme, as a
  [`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md)
  object.

- ...:

  These dots are for future extensions and must be empty.

- description:

  Character vector (optional). A short description for the security
  schemes. [CommonMark syntax](https://spec.commonmark.org/) may be used
  for rich text representation.

## Value

A `security_schemes` S7 object with details about security available for
operations.

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
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md)

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
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_reference()`](https://rapid.api2r.org/reference/class_reference.md),
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md)

## Examples

``` r
class_security_schemes()
#> <rapid::security_schemes>
#>  @ name       : chr(0) 
#>  @ details    : <rapid::security_scheme_details>  list()
#>  @ description: chr(0) 
class_security_schemes(
  name = c(
    "accountAuth",
    "resetPasswordAuth"
  ),
  details = class_security_scheme_details(
    class_oauth2_security_scheme(
      password_flow = class_oauth2_token_flow(
        token_url = "/account/authorization",
        scopes = class_scopes(
          name = c("Catalog", "Commerce", "Playback", "Settings"),
          description = c(
            "Access all read-only content",
            "Perform account-level transactions",
            "Allow playback of restricted content",
            "Modify account settings"
          )
        )
      )
    ),
    class_api_key_security_scheme(
      parameter_name = "authorization",
      location = "header"
    )
  )
)
#> <rapid::security_schemes>
#>  @ name       : chr [1:2] "accountAuth" "resetPasswordAuth"
#>  @ details    : <rapid::security_scheme_details> List of 2
#>  .. $ : <rapid::oauth2_security_scheme>
#>  ..  ..@ implicit_flow          : <rapid::oauth2_implicit_flow>
#>  .. .. .. @ refresh_url      : chr(0) 
#>  .. .. .. @ scopes           : <rapid::scopes>
#>  .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. @ description: chr(0) 
#>  .. .. .. @ authorization_url: chr(0) 
#>  ..  ..@ password_flow          : <rapid::oauth2_token_flow>
#>  .. .. .. @ refresh_url: chr(0) 
#>  .. .. .. @ scopes     : <rapid::scopes>
#>  .. .. .. .. @ name       : chr [1:4] "Catalog" "Commerce" "Playback" "Settings"
#>  .. .. .. .. @ description: chr [1:4] "Access all read-only content" "Perform account-level transactions" "Allow playback of restricted content" "Modify account settings"
#>  .. .. .. @ token_url  : chr "/account/authorization"
#>  ..  ..@ client_credentials_flow: <rapid::oauth2_token_flow>
#>  .. .. .. @ refresh_url: chr(0) 
#>  .. .. .. @ scopes     : <rapid::scopes>
#>  .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. @ description: chr(0) 
#>  .. .. .. @ token_url  : chr(0) 
#>  ..  ..@ authorization_code_flow: <rapid::oauth2_authorization_code_flow>
#>  .. .. .. @ refresh_url      : chr(0) 
#>  .. .. .. @ scopes           : <rapid::scopes>
#>  .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. @ description: chr(0) 
#>  .. .. .. @ authorization_url: chr(0) 
#>  .. .. .. @ token_url        : chr(0) 
#>  .. $ : <rapid::api_key_security_scheme>
#>  ..  ..@ parameter_name: chr "authorization"
#>  ..  ..@ location      : chr "header"
#>  @ description: chr(0) 
```
