# Coerce lists to security_schemes objects

`as_security_schemes()` turns an existing object into a
`security_schemes` object. This is in contrast with
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md),
which builds a `security_schemes` from individual properties.

## Usage

``` r
as_security_schemes(x, ...)
```

## Arguments

- x:

  The object to coerce. Must be empty or be a named list, where each
  element describes a security scheme object. This object should
  describe the security schemes for a single API.

- ...:

  These dots are for future extensions and must be empty.

## Value

A `security_schemes` object as returned by
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md).

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
[`as_security_scheme()`](https://rapid.api2r.org/reference/as_security_scheme.md),
[`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md),
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
as_security_schemes()
#> <rapid::security_schemes>
#>  @ name       : chr(0) 
#>  @ details    : <rapid::security_scheme_details>  list()
#>  @ description: chr(0) 
as_security_schemes(
  list(
    accountAuth = list(
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
    ),
    profileAuth = list(
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
    ),
    resetPasswordAuth = list(
      `in` = "header",
      name = "authorization",
      type = "apiKey"
    ),
    verifyEmailAuth = list(
      `in` = "header",
      name = "authorization",
      type = "apiKey"
    )
  )
)
#> <rapid::security_schemes>
#>  @ name       : chr [1:4] "accountAuth" "profileAuth" "resetPasswordAuth" ...
#>  @ details    : <rapid::security_scheme_details> List of 4
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
#>  .. .. .. .. @ name       : chr "Catalog"
#>  .. .. .. .. @ description: chr "Modify profile preferences and activity"
#>  .. .. .. @ token_url  : chr "/account/profile/authorization"
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
#>  .. $ : <rapid::api_key_security_scheme>
#>  ..  ..@ parameter_name: chr "authorization"
#>  ..  ..@ location      : chr "header"
#>  @ description: chr [1:4] "Account JWT token" "Profile JWT token" NA NA
```
