context("assert_that")

test_that("assert_that handles long false assertions gracefully", {
    expect_error(
        assert_that(isTRUE(10 + sqrt(25) + sum(1:10) + sqrt(25) + sum(11:20) + sqrt(25) + sum(21:30) + sqrt(25) + sum(31:40) + sqrt(25) + sum(41:50))),
        "^isTRUE\\(.* [.]{3} is not TRUE$"
    )
})

test_that("assert_that handles has_name failures with multiple missing names", {
    x <- list(a = TRUE, b = "hello")
    expect_error(
        assert_that(has_name(x, c("a", "f", "g"))),
        regexp = "x does not have all of these name"
    )
})
