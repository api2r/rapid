# An element to hold various schemas for the API

Holds a set of reusable objects for different aspects of the OAS. All
objects defined within the components object will have no effect on the
API unless they are explicitly referenced from properties outside the
components object. We currently only support the security_schemes object
within the components object (see
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)).

## Usage

``` r
class_components(..., security_schemes = class_security_schemes())
```

## Arguments

- ...:

  These dots are for future extensions and must be empty.

- security_schemes:

  An object to hold reusable security scheme objects created by
  [`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md).

## Value

A `components` S7 object with various schemas for the API.

## See also

[`as_components()`](https://rapid.api2r.org/reference/as_components.md)
for coercing objects to `components` objects.

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
class_components()
#> <rapid::components>
#>  @ security_schemes: <rapid::security_schemes>
#>  .. @ name       : chr(0) 
#>  .. @ details    : <rapid::security_scheme_details>  list()
#>  .. @ description: chr(0) 
class_components(
  security_schemes = class_security_schemes(
    name = "a",
    details = class_security_scheme_details(
      class_api_key_security_scheme("parm", "query")
    )
  )
)
#> <rapid::components>
#>  @ security_schemes: <rapid::security_schemes>
#>  .. @ name       : chr "a"
#>  .. @ details    : <rapid::security_scheme_details> List of 1
#>  .. .. $ : <rapid::api_key_security_scheme>
#>  .. ..  ..@ parameter_name: chr "parm"
#>  .. ..  ..@ location      : chr "query"
#>  .. @ description: chr(0) 
```
