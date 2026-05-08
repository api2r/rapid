# Source information for the API description

An `origin` object provides information about the primary source
document(s) used to build an API.

## Usage

``` r
class_origin(
  url = character(),
  ...,
  format = character(),
  version = character()
)
```

## Arguments

- url:

  Character (required). The URL(s) where the document(s) can be found.

- ...:

  These dots are for future extensions and must be empty.

- format:

  Character scalar (optional). The format of the document. Presently
  this will likely always be "openapi".

- version:

  Character scalar (optional). The specification version (relative to
  the `format`) used in defining the document. Not to be confused with
  the version of the API description itself. Most often this will be
  "3.0" (as in "OpenAPI Specification version 3.0"), "3.1", or a patch
  version of those.

## Value

An `origin` S7 object describing where to find the API description, with
fields `url`, `format`, and `version`.

## See also

info object:
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md)

## Examples

``` r
class_origin(
  "https://api.open.fec.gov/swagger/",
  format = "openapi",
  version = "3.0"
)
#> <rapid::origin>
#>  @ url    : chr "https://api.open.fec.gov/swagger/"
#>  @ format : chr "openapi"
#>  @ version: chr "3.0"
```
