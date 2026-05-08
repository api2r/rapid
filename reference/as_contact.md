# Coerce lists and character vectors to contacts

`as_contact()` turns an existing object into a `contact`. This is in
contrast with
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
which builds a `contact` from individual properties.

## Usage

``` r
as_contact(x, ..., arg = caller_arg(x), call = caller_env())
```

## Arguments

- x:

  The object to coerce. Must be empty or have names "name", "email",
  and/or "url", or names that can be coerced to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored. This object should describe a single point of
  contact.

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

A `contact` as returned by
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md).

## See also

info object:
[`as_info()`](https://rapid.api2r.org/reference/as_info.md),
[`as_license()`](https://rapid.api2r.org/reference/as_license.md),
[`as_origin()`](https://rapid.api2r.org/reference/as_origin.md),
[`class_contact()`](https://rapid.api2r.org/reference/class_contact.md),
[`class_info()`](https://rapid.api2r.org/reference/class_info.md),
[`class_license()`](https://rapid.api2r.org/reference/class_license.md),
[`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)

## Examples

``` r
as_contact()
#> <rapid::contact>
#>  @ name : chr(0) 
#>  @ email: chr(0) 
#>  @ url  : chr(0) 
as_contact(list(name = "Jon Harmon", email = "jonthegeek@gmail.com"))
#> <rapid::contact>
#>  @ name : chr "Jon Harmon"
#>  @ email: chr "jonthegeek@gmail.com"
#>  @ url  : chr(0) 
```
