context("listOMLRuns")

test_that("listOMLRuns", {
  exp.names = c("run.id", "task.id", "setup.id", "implementation.id", "uploader")

  rl = listOMLRuns(task.id = 1L, session.hash = session.hash)
  expect_is(rl, "data.frame")
  expect_true(all(rl$task.id == 1L))
  expect_true(setequal(names(rl), exp.names))

  rl = listOMLRuns(setup.id = 1L, session.hash = session.hash)
  expect_true(all(rl$setup.id == 1L))
  expect_true(setequal(names(rl), exp.names))

  rl = listOMLRuns(implementation.id = 56L, session.hash = session.hash)
  expect_true(all(rl$implementation.id == 56L))
  expect_true(setequal(names(rl), exp.names))
})
