# Convert to a rapid-style object

Convert an object into an object with a rapid-style class.

## Usage

``` r
as_api_object(
  x,
  target_class,
  ...,
  alternate_names = NULL,
  arg = caller_arg(x),
  call = caller_env()
)
```

## Arguments

- x:

  The object to coerce. Must be empty, or be a named list or character
  vector having names corresponding to the parameter of the
  `target_class`, or names that can be coerced to those names via
  [`snakecase::to_snake_case()`](https://rdrr.io/pkg/snakecase/man/caseconverter.html).
  Extra names are ignored.

- target_class:

  The S7 class to which the object should be converted.

- ...:

  These dots are for future extensions and must be empty.

- alternate_names:

  Character vector (optional). An optional named character vector, where
  the names are the names as they might appear in `x`, and the values
  are the corresponding properties.

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

An object with the specified `target_class`.

## See also

rapid object:
[`as_rapid()`](https://rapid.api2r.org/reference/as_rapid.md),
[`class_rapid()`](https://rapid.api2r.org/reference/class_rapid.md),
[`expand_servers()`](https://rapid.api2r.org/reference/expand_servers.md)
