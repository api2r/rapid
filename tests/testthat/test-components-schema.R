test_that("class_schema() errors informatively for bad type", {
  stbl::expect_pkg_error_classes(
    class_schema(type = "bad"),
    "stbl",
    "fct_levels"
  )
  test_result <- class_schema(type = "string")
  stbl::expect_pkg_error_classes(
    test_result@type <- "bad",
    "stbl",
    "fct_levels"
  )
})

test_that("class_schema() errors informatively for non-scalar type", {
  stbl::expect_pkg_error_classes(
    class_schema(type = c("string", "integer")),
    "stbl",
    "size_too_large"
  )
  test_result <- class_schema(type = "string")
  stbl::expect_pkg_error_classes(
    test_result@type <- c("string", "integer"),
    "stbl",
    "size_too_large"
  )
})

test_that("class_schema() requires both type and nullable", {
  expect_snapshot(
    class_schema(type = "string", nullable = NULL),
    error = TRUE
  )

  # There appears to be a bug in S7 preventing this from passing. Likely related
  # to RConsortium/S7#392. Re-try this after that issue is fixed, report new
  # issue if it still fails to fail

  # expect_snapshot(
  #   {
  #     test_result <- class_schema(type = "string")
  #     test_result@nullable <- NULL
  #   },
  #   error = TRUE
  # )
})

test_that("class_schema() without args returns an empty schema object", {
  expect_snapshot({
    test_result <- class_schema()
    test_result
  })
  expect_s3_class(
    test_result,
    class = c("rapid::schema", "S7_object"),
    exact = TRUE
  )
  expect_identical(
    S7::prop_names(test_result),
    c("type", "nullable", "description", "format")
  )
})

test_that("length() of a schema object reports the overall length", {
  expect_equal(length(class_schema()), 0)
  expect_equal(length(class_schema(type = "string")), 1)
})

test_that("as_schema() returns expected objects", {
  expect_identical(
    as_schema(
      list(type = "string", nullable = TRUE, description = "A nullable string.")
    ),
    class_schema(
      type = "string",
      nullable = TRUE,
      description = "A nullable string."
    )
  )

  expect_identical(
    as_schema(list()),
    class_schema()
  )
})
