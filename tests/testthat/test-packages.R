context("test-assert_packages")

test_that("we return TRUE when all packages are installed", {
  # put package names in a character vector
  expect_true(assert_packages(c("base", "utils")))

  # or by themselves
  expect_true(assert_packages("base", "utils"))
})

test_that("we throw an error when at least one package not installed", {
  expect_error(assert_packages("utils2"), "utils2")
  expect_error(assert_packages("base", "utils2"), "utils2")
})
