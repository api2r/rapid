# Contact information for the API

A `contact` object provides contact information for the API.

## Usage

``` r
class_contact(name = character(0), email = character(0), url = character(0))
```

## Arguments

- name:

  Character scalar (optional). The identifying name of the contact
  person or organization.

- email:

  Character scalar (optional). The email address of the contact
  person/organization. This must be in the form of an email address.

- url:

  Character scalar (optional). The URL pointing to the contact
  information.

## Value

A `contact` S7 object describing who to contact for information about
the API, with fields `name`, `email`, and `url`.

## See also

info object
[`as_contact()`](https://rapid.api2r.org/reference/as_contact.md),
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
class_contact(
  "API Support",
  "support@example.com",
  "https://www.example.com/support"
)
#> <rapid::contact>
#>  @ name : chr "API Support"
#>  @ email: chr "support@example.com"
#>  @ url  : chr "https://www.example.com/support"
```
