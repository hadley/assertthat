context("on-failure")

test_that("on_failure should work", {
  is_red <- function(x) {x == "red"}
  on_failure(is_red) <- function(call, env) {
      paste0(deparse(call$x), " is not red")
  }
  
  res <- see_if(is_red("blue"))
  expect_false(res[[1]])
  expect_identical(attr(res, "msg"), '"blue" is not red')
})
