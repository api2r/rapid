# Package index

## rapid object

The main rapid object, containing [all information about the
API](https://spec.openapis.org/oas/v3.1.0#openapi-object).

- [`as_api_object()`](https://rapid.api2r.org/reference/as_api_object.md)
  : Convert to a rapid-style object
- [`as_rapid()`](https://rapid.api2r.org/reference/as_rapid.md) : Coerce
  lists and urls to rapid objects
- [`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md) :
  R API description object
- [`expand_servers()`](https://rapid.api2r.org/reference/expand_servers.md)
  : Expand server urls to absolute paths

## info object

The info object contains [metadata about the
API](https://spec.openapis.org/oas/v3.1.0#info-object).

- [`as_contact()`](https://rapid.api2r.org/reference/as_contact.md) :
  Coerce lists and character vectors to contacts
- [`as_info()`](https://rapid.api2r.org/reference/as_info.md) : Coerce
  lists and character vectors to info objects
- [`as_license()`](https://rapid.api2r.org/reference/as_license.md) :
  Coerce lists and character vectors to licenses
- [`as_origin()`](https://rapid.api2r.org/reference/as_origin.md) :
  Coerce lists and character vectors to origin
- [`class_contact()`](https://rapid.api2r.org/reference/class_contact.md)
  : Contact information for the API
- [`class_info()`](https://rapid.api2r.org/reference/class_info.md) :
  Information about the API
- [`class_license()`](https://rapid.api2r.org/reference/class_license.md)
  : License information for the API
- [`class_origin()`](https://rapid.api2r.org/reference/class_origin.md)
  : Source information for the API description

## components object

The components object contains [reusable objects for different aspects
of the API](https://spec.openapis.org/oas/v3.1.0#components-object).

- [`class_components()`](https://rapid.api2r.org/reference/class_components.md)
  : An element to hold various schemas for the API
- [`as_components()`](https://rapid.api2r.org/reference/as_components.md)
  : Coerce lists to components objects

### reference objects

- [`as_reference()`](https://rapid.api2r.org/reference/as_reference.md)
  : Coerce lists and character vectors to references
- [`class_reference()`](https://rapid.api2r.org/reference/class_reference.md)
  : A simple object for referencing other components in the API
  description

### schema objects

- [`as_schema()`](https://rapid.api2r.org/reference/as_schema.md) :
  Coerce lists to schemas
- [`class_schema()`](https://rapid.api2r.org/reference/class_schema.md)
  : Reusable input and output data type definitions

### security scheme objects

- [`as_api_key_security_scheme()`](https://rapid.api2r.org/reference/as_api_key_security_scheme.md)
  : Coerce lists and character vectors to API key security schemes
- [`as_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/as_oauth2_authorization_code_flow.md)
  : Coerce lists and character vectors to OAuth2 authorization code
  flows
- [`as_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/as_oauth2_implicit_flow.md)
  : Coerce lists and character vectors to OAuth2 implicit flows
- [`as_oauth2_security_scheme()`](https://rapid.api2r.org/reference/as_oauth2_security_scheme.md)
  : Coerce lists to oauth2 security schemes
- [`as_oauth2_token_flow()`](https://rapid.api2r.org/reference/as_oauth2_token_flow.md)
  : Coerce lists and character vectors to OAuth2 token flows
- [`as_scopes()`](https://rapid.api2r.org/reference/as_scopes.md) :
  Coerce lists and character vectors to scopes
- [`as_security_scheme()`](https://rapid.api2r.org/reference/as_security_scheme.md)
  : Coerce lists to security_scheme objects
- [`as_security_scheme_details()`](https://rapid.api2r.org/reference/as_security_scheme_details.md)
  : Coerce lists to security_scheme_details objects
- [`as_security_schemes()`](https://rapid.api2r.org/reference/as_security_schemes.md)
  : Coerce lists to security_schemes objects
- [`class_api_key_security_scheme()`](https://rapid.api2r.org/reference/class_api_key_security_scheme.md)
  : API key security schemes
- [`class_oauth2_authorization_code_flow()`](https://rapid.api2r.org/reference/class_oauth2_authorization_code_flow.md)
  : OAuth2 authorization code flow object
- [`class_oauth2_implicit_flow()`](https://rapid.api2r.org/reference/class_oauth2_implicit_flow.md)
  : OAuth2 implicit flow object
- [`class_oauth2_security_scheme()`](https://rapid.api2r.org/reference/class_oauth2_security_scheme.md)
  : OAuth2 security schemes
- [`class_oauth2_token_flow()`](https://rapid.api2r.org/reference/class_oauth2_token_flow.md)
  : OAuth2 token flow object
- [`class_scopes()`](https://rapid.api2r.org/reference/class_scopes.md)
  : OAuth2 flow scopes objects
- [`class_security_scheme_details()`](https://rapid.api2r.org/reference/class_security_scheme_details.md)
  : Details of API security schemes
- [`class_security_schemes()`](https://rapid.api2r.org/reference/class_security_schemes.md)
  : Reusable security schemes for an API

## paths object

The paths object contains [available paths and operations for the
API](https://spec.openapis.org/oas/v3.1.0#paths-object).

- [`as_paths()`](https://rapid.api2r.org/reference/as_paths.md) : Coerce
  objects to paths
- [`class_paths()`](https://rapid.api2r.org/reference/class_paths.md) :
  The available paths and operations for the API

## security object

The security object contains [a declaration of which security mechanisms
can be used across the
API](https://spec.openapis.org/oas/v3.1.0#security-requirement-object).

- [`as_security()`](https://rapid.api2r.org/reference/as_security.md) :
  Coerce lists to as_security objects
- [`class_security()`](https://rapid.api2r.org/reference/class_security.md)
  : Security schemes required to execute an operation

## servers object

The servers object contains [connectivity information for the
API](https://spec.openapis.org/oas/v3.1.0#server-object).

- [`as_server_variables()`](https://rapid.api2r.org/reference/as_server_variables.md)
  : Coerce lists to server_variables
- [`as_servers()`](https://rapid.api2r.org/reference/as_servers.md) :
  Coerce lists and character vectors to servers
- [`as_string_replacements()`](https://rapid.api2r.org/reference/as_string_replacements.md)
  : Coerce lists to string_replacements
- [`class_server_variables()`](https://rapid.api2r.org/reference/class_server_variables.md)
  : A collection of string replacements for multiple servers
- [`class_servers()`](https://rapid.api2r.org/reference/class_servers.md)
  : An object representing a collection of servers
- [`class_string_replacements()`](https://rapid.api2r.org/reference/class_string_replacements.md)
  : A set of variables for server URL template substitution
