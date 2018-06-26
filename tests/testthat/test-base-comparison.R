context("Assertion messages on base operators")

test_that("assert_that respects custom error messages for base operators", {
  expect_error(assert_that(5 == 'i'), "not equal to")
  expect_error(assert_that(5 < 4), "not less than")
  expect_error(assert_that(4 > 5), "not greater than")
  expect_error(assert_that(4 >= 5), "not greater than or equal to")
  expect_error(assert_that(5 <= 4), "not less than or equal to")
  expect_error(assert_that(5 != 5), "not equal to")
})
