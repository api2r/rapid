# Expand server urls to absolute paths

`expand_servers()` uses the `origin` property of a `rapid` object to
expand the `servers` `url` property to an absolute path.

## Usage

``` r
expand_servers(x, ...)
```

## Arguments

- x:

  The object to update. Must be a `rapid`.

- ...:

  These dots are for future extensions and must be empty.

## Value

A `rapid` object as returned by
[`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md),
with absolute server paths.

## See also

rapid object:
[`as_api_object()`](https://rapid.api2r.org/reference/as_api_object.md),
[`as_rapid()`](https://rapid.api2r.org/reference/as_rapid.md),
[`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md)
