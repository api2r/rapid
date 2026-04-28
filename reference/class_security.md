# Security schemes required to execute an operation

The object lists the required security schemes to execute an operation
or operations.

## Usage

``` r
class_security(name = character(), ..., required_scopes = list())
```

## Arguments

- name:

  Character vector (required). The names must correspond to security
  schemes declared in the `security_schemes` property of a
  [`class_components()`](https://rapid.api2r.org/reference/class_components.md).

- ...:

  These dots are for future extensions and must be empty.

- required_scopes:

  A list of character vectors, each of which describe the scopes
  required for this security scheme. The vector corresponding to a given
  `name` can be empty.

## Value

A `security` S7 object with references of security required for
operations.

## See also

security object
[`as_security()`](https://rapid.api2r.org/reference/as_security.md)

## Examples

``` r
class_security()
#> <rapid::security>
#>  @ name                   : chr(0) 
#>  @ required_scopes        : list()
#>  @ rapid_class_requirement: chr "security_scheme"
class_security(
  name = c("oauth2", "internalApiKey"),
  required_scopes = list(
    c("user", "user:email", "user:follow"),
    character()
  )
)
#> <rapid::security>
#>  @ name                   : chr [1:2] "oauth2" "internalApiKey"
#>  @ required_scopes        :List of 2
#>  .. $ : chr [1:3] "user" "user:email" "user:follow"
#>  .. $ : chr(0) 
#>  @ rapid_class_requirement: chr "security_scheme"
```
