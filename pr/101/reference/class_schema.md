# Reusable input and output data type definitions

The `schema` object allows the definition of input and output data
types. These types can be objects, but also primitives and arrays. This
object is a superset of the [JSON Schema Specification Draft
2020-12](https://datatracker.ietf.org/doc/html/draft-bhutton-json-schema-00).

## Usage

``` r
class_schema(
  type = c("string", "number", "integer", "boolean", "array", "object"),
  ...,
  nullable = FALSE,
  description = character(),
  format = character()
)
```

## Arguments

- type:

  Factor (or coercible to factor). The type of object being defined.
  Currently must be one of "string", "number", "integer", "boolean",
  "array", or "object".

- ...:

  These dots are for future extensions and must be empty.

- nullable:

  Logical scalar (default `FALSE`). Whether the parameter can be set to
  `NULL`.

- description:

  Character scalar (optional). A description of the object defined by
  the schema.

- format:

  Character scalar (optional). The format of the object. Essentially a
  sub-type.

## Value

A `schema` S7 object describing the data type, with fields `type`,
`nullable`, `description`, and `format`.

## See also

schema objects
[`as_schema()`](https://rapid.api2r.org/reference/as_schema.md)

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
[`class_reference()`](https://rapid.api2r.org/reference/class_reference.md),
[`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md),
[`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md),
[`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)

## Examples

``` r
class_schema("string")
#> <rapid::schema>
#>  @ type       : Factor w/ 6 levels "string","number",..: 1
#>  .. - attr(*, "initialized")= logi TRUE
#>  @ nullable   : logi FALSE
#>  @ description: chr(0) 
#>  @ format     : chr(0) 
class_schema("string", nullable = TRUE, description = "A nullable string.")
#> <rapid::schema>
#>  @ type       : Factor w/ 6 levels "string","number",..: 1
#>  .. - attr(*, "initialized")= logi TRUE
#>  @ nullable   : logi TRUE
#>  @ description: chr "A nullable string."
#>  @ format     : chr(0) 
```
