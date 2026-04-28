# Information about the API

The object provides metadata about the API. The metadata may be used by
the clients if needed, and may be presented in editing or documentation
generation tools for convenience.

## Usage

``` r
class_info(
  title = character(),
  version = character(),
  ...,
  contact = class_contact(),
  description = character(),
  license = class_license(),
  summary = character(),
  terms_of_service = character(),
  origin = class_origin()
)
```

## Arguments

- title:

  Character scalar. The title of the API. Required when the object is
  not empty.

- version:

  Character scalar. The version of the API description (which is
  distinct from the OpenAPI Specification version or the API
  implementation version). Required when the object is not empty.

- ...:

  These dots are for future extensions and must be empty.

- contact:

  The contact information for the exposed API, generated via
  [`class_contact()`](https://rapid.api2r.org/reference/class_contact.md).

- description:

  Character scalar (optional). A description of the API. [CommonMark
  syntax](https://spec.commonmark.org/) may be used for rich text
  representation.

- license:

  The license information for the exposed API, generated via
  [`license()`](https://rdrr.io/r/base/license.html).

- summary:

  Character scalar (optional). A short summary of the API.

- terms_of_service:

  Character scalar (optional). A URL to the Terms of Service for the
  API.

- origin:

  The url and related information about the document used to build the
  API description. This is used to resolve relative paths in the API
  description. Note: This is not part of the OpenAPI Specification, but
  is sometimes supplied as "x-origin".

## Value

An `info` S7 object with metadata describing a single API.

## See also

info object
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
class_info()
#> <rapid::info>
#>  @ title           : chr(0) 
#>  @ version         : chr(0) 
#>  @ contact         : <rapid::contact>
#>  .. @ name : chr(0) 
#>  .. @ email: chr(0) 
#>  .. @ url  : chr(0) 
#>  @ description     : chr(0) 
#>  @ license         : <rapid::license>
#>  .. @ name      : chr(0) 
#>  .. @ identifier: chr(0) 
#>  .. @ url       : chr(0) 
#>  @ summary         : chr(0) 
#>  @ terms_of_service: chr(0) 
#>  @ origin          : <rapid::origin>
#>  .. @ url    : chr(0) 
#>  .. @ format : chr(0) 
#>  .. @ version: chr(0) 
class_info(
  title = "My Cool API",
  version = "1.0.2",
  license = class_license(
    name = "Apache 2.0",
    url = "https://opensource.org/license/apache-2-0/"
  )
)
#> <rapid::info>
#>  @ title           : chr "My Cool API"
#>  @ version         : chr "1.0.2"
#>  @ contact         : <rapid::contact>
#>  .. @ name : chr(0) 
#>  .. @ email: chr(0) 
#>  .. @ url  : chr(0) 
#>  @ description     : chr(0) 
#>  @ license         : <rapid::license>
#>  .. @ name      : chr "Apache 2.0"
#>  .. @ identifier: chr(0) 
#>  .. @ url       : chr "https://opensource.org/license/apache-2-0/"
#>  @ summary         : chr(0) 
#>  @ terms_of_service: chr(0) 
#>  @ origin          : <rapid::origin>
#>  .. @ url    : chr(0) 
#>  .. @ format : chr(0) 
#>  .. @ version: chr(0) 
class_info(
  title = "My Abbreviated API",
  version = "2.0.0",
  origin = "https://root.url"
)
#> <rapid::info>
#>  @ title           : chr "My Abbreviated API"
#>  @ version         : chr "2.0.0"
#>  @ contact         : <rapid::contact>
#>  .. @ name : chr(0) 
#>  .. @ email: chr(0) 
#>  .. @ url  : chr(0) 
#>  @ description     : chr(0) 
#>  @ license         : <rapid::license>
#>  .. @ name      : chr(0) 
#>  .. @ identifier: chr(0) 
#>  .. @ url       : chr(0) 
#>  @ summary         : chr(0) 
#>  @ terms_of_service: chr(0) 
#>  @ origin          : <rapid::origin>
#>  .. @ url    : chr "https://root.url"
#>  .. @ format : chr(0) 
#>  .. @ version: chr(0) 
```
