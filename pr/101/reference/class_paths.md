# The available paths and operations for the API

Holds the relative paths to the individual endpoints and their
operations. The path is appended to the URL from the
[`class_servers()`](https://rapid.api2r.org/reference/class_servers.md)
object in order to construct the full URL. The paths may be empty.

## Usage

``` r
class_paths(...)
```

## Arguments

- ...:

  A data.frame, or arguments to pass to
  [`tibble::tibble()`](https://tibble.tidyverse.org/reference/tibble.html).

## Value

A `paths` S7 object with details about API endpoints.

## See also

paths object
[`as_paths()`](https://rapid.api2r.org/reference/as_paths.md)

## Examples

``` r
class_paths()
#> data frame with 0 columns and 0 rows
class_paths(
  tibble::tibble(
    endpoint = c("/endpoint1", "/endpoint2"),
    operations = list(
      tibble::tibble(operation_properties = 1:2),
      tibble::tibble(operation_properties = 3:5)
    )
  )
)
#>     endpoint operations
#> 1 /endpoint1       1, 2
#> 2 /endpoint2    3, 4, 5
```
