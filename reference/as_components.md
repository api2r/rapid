# Coerce lists to components objects

`as_components()` turns an existing object into a `components` object.
This is in contrast with
[`class_components()`](https://rapid.api2r.org/reference/class_components.md),
which builds a `components` from individual properties.

## Usage

``` r
as_components(x, ..., arg = caller_arg(x), call = caller_env())
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

A `components` object as returned by
[`class_components()`](https://rapid.api2r.org/reference/class_components.md).

## See also

[`class_components()`](https://rapid.api2r.org/reference/class_components.md)
for creating `components` objects.

components object
[`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md),
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
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

## Examples

``` r
as_components()
#> <rapid::components>
#>  @ security_schemes: <rapid::security_schemes>
#>  .. @ name       : chr(0) 
#>  .. @ details    : <rapid::security_scheme_details>  list()
#>  .. @ description: chr(0) 
as_components(list(
  securitySchemes = list(
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
))
#> <rapid::components>
#>  @ security_schemes: <rapid::security_schemes>
#>  .. @ name       : chr [1:4] "accountAuth" "profileAuth" "resetPasswordAuth" ...
#>  .. @ details    : <rapid::security_scheme_details> List of 4
#>  .. .. $ : <rapid::oauth2_security_scheme>
#>  .. ..  ..@ implicit_flow          : <rapid::oauth2_implicit_flow>
#>  .. .. .. .. @ refresh_url      : chr(0) 
#>  .. .. .. .. @ scopes           : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. .. @ description: chr(0) 
#>  .. .. .. .. @ authorization_url: chr(0) 
#>  .. ..  ..@ password_flow          : <rapid::oauth2_token_flow>
#>  .. .. .. .. @ refresh_url: chr(0) 
#>  .. .. .. .. @ scopes     : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr [1:4] "Catalog" "Commerce" "Playback" "Settings"
#>  .. .. .. .. .. @ description: chr [1:4] "Access all read-only content" "Perform account-level transactions" "Allow playback of restricted content" "Modify account settings"
#>  .. .. .. .. @ token_url  : chr "/account/authorization"
#>  .. ..  ..@ client_credentials_flow: <rapid::oauth2_token_flow>
#>  .. .. .. .. @ refresh_url: chr(0) 
#>  .. .. .. .. @ scopes     : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. .. @ description: chr(0) 
#>  .. .. .. .. @ token_url  : chr(0) 
#>  .. ..  ..@ authorization_code_flow: <rapid::oauth2_authorization_code_flow>
#>  .. .. .. .. @ refresh_url      : chr(0) 
#>  .. .. .. .. @ scopes           : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. .. @ description: chr(0) 
#>  .. .. .. .. @ authorization_url: chr(0) 
#>  .. .. .. .. @ token_url        : chr(0) 
#>  .. .. $ : <rapid::oauth2_security_scheme>
#>  .. ..  ..@ implicit_flow          : <rapid::oauth2_implicit_flow>
#>  .. .. .. .. @ refresh_url      : chr(0) 
#>  .. .. .. .. @ scopes           : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. .. @ description: chr(0) 
#>  .. .. .. .. @ authorization_url: chr(0) 
#>  .. ..  ..@ password_flow          : <rapid::oauth2_token_flow>
#>  .. .. .. .. @ refresh_url: chr(0) 
#>  .. .. .. .. @ scopes     : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr "Catalog"
#>  .. .. .. .. .. @ description: chr "Modify profile preferences and activity"
#>  .. .. .. .. @ token_url  : chr "/account/profile/authorization"
#>  .. ..  ..@ client_credentials_flow: <rapid::oauth2_token_flow>
#>  .. .. .. .. @ refresh_url: chr(0) 
#>  .. .. .. .. @ scopes     : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. .. @ description: chr(0) 
#>  .. .. .. .. @ token_url  : chr(0) 
#>  .. ..  ..@ authorization_code_flow: <rapid::oauth2_authorization_code_flow>
#>  .. .. .. .. @ refresh_url      : chr(0) 
#>  .. .. .. .. @ scopes           : <rapid::scopes>
#>  .. .. .. .. .. @ name       : chr(0) 
#>  .. .. .. .. .. @ description: chr(0) 
#>  .. .. .. .. @ authorization_url: chr(0) 
#>  .. .. .. .. @ token_url        : chr(0) 
#>  .. .. $ : <rapid::api_key_security_scheme>
#>  .. ..  ..@ parameter_name: chr "authorization"
#>  .. ..  ..@ location      : chr "header"
#>  .. .. $ : <rapid::api_key_security_scheme>
#>  .. ..  ..@ parameter_name: chr "authorization"
#>  .. ..  ..@ location      : chr "header"
#>  .. @ description: chr [1:4] "Account JWT token" "Profile JWT token" NA NA
```
