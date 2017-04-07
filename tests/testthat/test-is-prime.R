context("is.prime")
# add more primes when the test below fails
expect_true(sqrt(.Machine$integer.max) < max(primes))
# check arguments
expect_error(
  is.prime(x = "a"),
  "x is not a count"
)
expect_false(
  is.prime(x = 1)
)
expect_false(
  is.prime(x = 1L)
)
# test known primes
sapply(sample(primes, 100), function(test.prime){
  expect_true(
    is.prime(test.prime)
  )
})
# test known combines
x <- sample(max(primes), size = 100)
sapply(x[!x %in% primes], function(test.prime){
  expect_false(
    is.prime(test.prime)
  )
})
# test random integers
sapply(sample(.Machine$integer.max, size = 100), function(test.prime){
  expect_is(
    is.prime(test.prime),
    "logical"
  )
})
