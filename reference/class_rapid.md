# R API description object

An object that represents an API.

## Usage

``` r
class_rapid(
  info = class_info(),
  ...,
  servers = class_servers(),
  components = class_components(),
  paths = class_paths(),
  security = class_security()
)
```

## Arguments

- info:

  An `info` object defined by
  [`class_info()`](https://rapid.api2r.org/reference/class_info.md).

- ...:

  These dots are for future extensions and must be empty.

- servers:

  A `servers` object defined by
  [`class_servers()`](https://rapid.api2r.org/reference/class_servers.md).

- components:

  A `components` object defined by
  [`class_components()`](https://rapid.api2r.org/reference/class_components.md).

- paths:

  A `paths` object defined by
  [`class_paths()`](https://rapid.api2r.org/reference/class_paths.md).

- security:

  A `security` object defined by
  [`class_security()`](https://rapid.api2r.org/reference/class_security.md).

## Value

A `rapid` S7 object, with properties `info`, `servers`, `components`,
`paths`, and `security`.

## See also

rapid object
[`as_api_object()`](https://rapid.api2r.org/reference/as_api_object.md),
[`as_rapid()`](https://rapid.api2r.org/reference/as_rapid.md),
[`expand_servers()`](https://rapid.api2r.org/reference/expand_servers.md)

## Examples

``` r
class_rapid()
#> <rapid::rapid>
#>  @ info      : <rapid::info>
#>  .. @ title           : chr(0) 
#>  .. @ version         : chr(0) 
#>  .. @ contact         : <rapid::contact>
#>  .. .. @ name : chr(0) 
#>  .. .. @ email: chr(0) 
#>  .. .. @ url  : chr(0) 
#>  .. @ description     : chr(0) 
#>  .. @ license         : <rapid::license>
#>  .. .. @ name      : chr(0) 
#>  .. .. @ identifier: chr(0) 
#>  .. .. @ url       : chr(0) 
#>  .. @ summary         : chr(0) 
#>  .. @ terms_of_service: chr(0) 
#>  .. @ origin          : <rapid::origin>
#>  .. .. @ url    : chr(0) 
#>  .. .. @ format : chr(0) 
#>  .. .. @ version: chr(0) 
#>  @ servers   : <rapid::servers>
#>  .. @ url        : chr(0) 
#>  .. @ description: chr(0) 
#>  .. @ variables  : <rapid::server_variables>  list()
#>  @ components: <rapid::components>
#>  .. @ security_schemes: <rapid::security_schemes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ details    : <rapid::security_scheme_details>  list()
#>  .. .. @ description: chr(0) 
#>  @ paths     :Classes ‘rapid::paths’, ‘S7_object’ and 'data.frame':  0 obs. of  0 variables
#>  <rapid::paths>  Named list()
#>  .. - attr(*, "dim")= int [1:2] 0 0
#>  @ security  : <rapid::security>
#>  .. @ name                   : chr(0) 
#>  .. @ required_scopes        : list()
#>  .. @ rapid_class_requirement: chr "security_scheme"
class_rapid(
  info = class_info(title = "A", version = "1"),
  servers = class_servers(
    url = "https://development.gigantic-server.com/v1"
  )
)
#> <rapid::rapid>
#>  @ info      : <rapid::info>
#>  .. @ title           : chr "A"
#>  .. @ version         : chr "1"
#>  .. @ contact         : <rapid::contact>
#>  .. .. @ name : chr(0) 
#>  .. .. @ email: chr(0) 
#>  .. .. @ url  : chr(0) 
#>  .. @ description     : chr(0) 
#>  .. @ license         : <rapid::license>
#>  .. .. @ name      : chr(0) 
#>  .. .. @ identifier: chr(0) 
#>  .. .. @ url       : chr(0) 
#>  .. @ summary         : chr(0) 
#>  .. @ terms_of_service: chr(0) 
#>  .. @ origin          : <rapid::origin>
#>  .. .. @ url    : chr(0) 
#>  .. .. @ format : chr(0) 
#>  .. .. @ version: chr(0) 
#>  @ servers   : <rapid::servers>
#>  .. @ url        : chr "https://development.gigantic-server.com/v1"
#>  .. @ description: chr(0) 
#>  .. @ variables  : <rapid::server_variables>  list()
#>  @ components: <rapid::components>
#>  .. @ security_schemes: <rapid::security_schemes>
#>  .. .. @ name       : chr(0) 
#>  .. .. @ details    : <rapid::security_scheme_details>  list()
#>  .. .. @ description: chr(0) 
#>  @ paths     :Classes ‘rapid::paths’, ‘S7_object’ and 'data.frame':  0 obs. of  0 variables
#>  <rapid::paths>  Named list()
#>  .. - attr(*, "dim")= int [1:2] 0 0
#>  @ security  : <rapid::security>
#>  .. @ name                   : chr(0) 
#>  .. @ required_scopes        : list()
#>  .. @ rapid_class_requirement: chr "security_scheme"
class_rapid(
  info = class_info(title = "A", version = "1"),
  servers = class_servers(
    url = c(
      "https://development.gigantic-server.com/v1",
      "https://staging.gigantic-server.com/v1",
      "https://api.gigantic-server.com/v1"
    ),
    description = c(
      "Development server",
      "Staging server",
      "Production server"
    )
  ),
  components = class_components(
    security_schemes = class_security_schemes(
      name = "a",
      details = class_security_scheme_details(
        class_api_key_security_scheme("parm", "query")
      )
    )
  )
)
#> <rapid::rapid>
#>  @ info      : <rapid::info>
#>  .. @ title           : chr "A"
#>  .. @ version         : chr "1"
#>  .. @ contact         : <rapid::contact>
#>  .. .. @ name : chr(0) 
#>  .. .. @ email: chr(0) 
#>  .. .. @ url  : chr(0) 
#>  .. @ description     : chr(0) 
#>  .. @ license         : <rapid::license>
#>  .. .. @ name      : chr(0) 
#>  .. .. @ identifier: chr(0) 
#>  .. .. @ url       : chr(0) 
#>  .. @ summary         : chr(0) 
#>  .. @ terms_of_service: chr(0) 
#>  .. @ origin          : <rapid::origin>
#>  .. .. @ url    : chr(0) 
#>  .. .. @ format : chr(0) 
#>  .. .. @ version: chr(0) 
#>  @ servers   : <rapid::servers>
#>  .. @ url        : chr [1:3] "https://development.gigantic-server.com/v1" ...
#>  .. @ description: chr [1:3] "Development server" "Staging server" ...
#>  .. @ variables  : <rapid::server_variables>  list()
#>  @ components: <rapid::components>
#>  .. @ security_schemes: <rapid::security_schemes>
#>  .. .. @ name       : chr "a"
#>  .. .. @ details    : <rapid::security_scheme_details> List of 1
#>  .. .. .. $ : <rapid::api_key_security_scheme>
#>  .. .. ..  ..@ parameter_name: chr "parm"
#>  .. .. ..  ..@ location      : chr "query"
#>  .. .. @ description: chr(0) 
#>  @ paths     :Classes ‘rapid::paths’, ‘S7_object’ and 'data.frame':  0 obs. of  0 variables
#>  <rapid::paths>  Named list()
#>  .. - attr(*, "dim")= int [1:2] 0 0
#>  @ security  : <rapid::security>
#>  .. @ name                   : chr(0) 
#>  .. @ required_scopes        : list()
#>  .. @ rapid_class_requirement: chr "security_scheme"
```
