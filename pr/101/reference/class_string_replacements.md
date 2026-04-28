# A set of variables for server URL template substitution

A `string_replacements` object describes server variable properties used
for substitution in a single server’s URL template.

## Usage

``` r
class_string_replacements(
  name = character(),
  default = character(),
  ...,
  enum = list(),
  description = character()
)
```

## Arguments

- name:

  Character vector (required). The names of the variables.

- default:

  Character vector (required). The default value to use for substitution
  of each variable, which shall be sent if an alternate value is not
  supplied. Note this behavior is different than the Schema Object’s
  treatment of default values, because in those cases parameter values
  are optional. If the `enum` is defined, the value must exist in the
  enum’s values.

- ...:

  These dots are for future extensions and must be empty.

- enum:

  List of (potentially empty) character vectors (optional). An
  enumeration of valid string values to be used if the substitution
  options are from a limited set.

- description:

  Character vector (optional). An optional description for each server
  variable. [CommonMark syntax](https://spec.commonmark.org/) may be
  used for rich text representation.

## Value

A `string_replacements` S7 object describing a collection of string
variables for a single server, with fields `name`, `default`, `enum`,
and `description`.

## See also

servers object
[`as_server_variables()`](https://rapid.api2r.org/reference/as_server_variables.md),
[`as_servers()`](https://rapid.api2r.org/reference/as_servers.md),
[`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md),
[`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md),
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md)

## Examples

``` r
class_string_replacements(
  "username",
  "demo",
  enum = c("demo", "other"),
  description = "The active user's folder."
)
#> <rapid::string_replacements>
#>  @ name       : chr "username"
#>  @ default    : chr "demo"
#>  @ enum       :List of 1
#>  .. $ : chr [1:2] "demo" "other"
#>  @ description: chr "The active user's folder."
```
