context("listOMLEvaluationMeasures")

test_that("listOMLEvaluationMeasures", {
  df = listOMLEvaluationMeasures(session.hash)
  expect_is(df, "data.frame")
  expect_true(nrow(df) > 30L)
  expect_true(ncol(df) == 1L)
  expect_true(names(df) == "name")
})
