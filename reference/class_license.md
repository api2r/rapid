# License information for the API

A `license` object provides license information for the API to describe
how the API can be used.

## Usage

``` r
class_license(
  name = character(),
  ...,
  identifier = character(),
  url = character()
)
```

## Arguments

- name:

  Character scalar (optional). The license name used for the API.

- ...:

  These dots are for future extensions and must be empty.

- identifier:

  Character scalar (optional). An
  [SPDX](https://spdx.org/spdx-specification-21-web-version#h.jxpfx0ykyb60)
  license expression for the API. The `identifier` field is mutually
  exclusive of the `url` field.

- url:

  Character scalar (optional). A URL to the license used for the API.
  This must be in the form of a URL. The `url` field is mutually
  exclusive of the `identifier` field.

## Value

A `license` S7 object describing allowed usage of the API, with fields
`name`, `identifier`, and `url`.

## See also

info object:
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
class_license(
  "Apache 2.0",
  identifier = "Apache-2.0"
)
#> <rapid::license>
#>  @ name      : chr "Apache 2.0"
#>  @ identifier: chr "Apache-2.0"
#>  @ url       : chr(0) 
class_license(
  "Apache 2.0",
  url = "https://opensource.org/license/apache-2-0/"
)
#> <rapid::license>
#>  @ name      : chr "Apache 2.0"
#>  @ identifier: chr(0) 
#>  @ url       : chr "https://opensource.org/license/apache-2-0/"
```
