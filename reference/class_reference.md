# A simple object for referencing other components in the API description

The `reference` object allows for reuse of components between different
parts of the API description. These objects are currently simple
character references, but may change structure in the future to
automatically resolve references.

## Usage

``` r
class_reference(
  ref_uri = character(0),
  summary = character(0),
  description = character(0)
)
```

## Arguments

- ref_uri:

  Character scalar. The reference identifier. This must be in the form
  of a URI.

- summary:

  Character scalar (optional). A short summary which by default should
  override that of the referenced component. If the referenced
  object-type does not allow a summary field, then this field has no
  effect.

- description:

  Character scalar (optional). A description which by default should
  override that of the referenced component. [CommonMark
  syntax](https://spec.commonmark.org/) may be used for rich text
  representation. If the referenced object-type does not allow a
  description field, then this field has no effect.

## Value

A `reference` S7 object pointing (by name) to another part of the
`rapid` object.

## See also

reference objects
[`as_reference()`](https://rapid.api2r.org/reference/as_reference.md)

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
[`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md),
[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_schema()`](https://rapid.api2r.org/reference/class_schema.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

## Examples

``` r
class_reference("#/components/schemas/Pet")
#> <rapid::reference>
#>  @ ref_uri    : chr "#/components/schemas/Pet"
#>  @ summary    : chr(0) 
#>  @ description: chr(0) 
```
