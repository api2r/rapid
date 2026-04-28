# OAuth2 flow object

This is an abstract class that is used to define specific types of
OAuth2 flow objects.

## Usage

``` r
abstract_oauth2_flow(refresh_url = character(0), scopes = scopes())
```

## Arguments

- refresh_url:

  Character scalar (optional). The URL to be used for obtaining refresh
  tokens. This must be in the form of a URL. The OAuth2 standard
  requires the use of TLS.

- scopes:

  An optional
  [`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md)
  object with the available scopes for the OAuth2 security scheme.

## See also

[`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md),
[`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md),
and
[`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md)
