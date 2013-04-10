# assertthat

Assertthat provides a drop in replacement for `stopifnot()` that makes it easy to check the pre- and post-conditions, while producing useful error messages.  

```R
x <- 1:10
stopifnot(is.character(x))
# Error: is.character(x) is not TRUE

assert_that(is.character(x))
# Error: x is not a character vector

assert_that(length(x) == 5)
# Error: length(x) not equal to 5

assert_that(is.numeric(x))
# [1] TRUE
```

This is a good defensive programming technique, and is useful as source-code documentation: you can see exactly what your function expects when you come back to it in the future.  It is partly a response to the lack of static typing in R, but it is much more general. There are many conditions (like `length(x) == length(y)`) that are difficult to assert in a type system.

`assertthat` is not yet available on CRAN, but you can install it with devtools:

```R
library(devtools)
install_github("assertthat")
```

## New assertions

As well as all the functions provided by R, assertthat provides a few more that I use a lot:

* `is.flag(x)`: is x `TRUE` or `FALSE`? (a boolean flag)
* `is.string(x)`: is x a length 1 character vector?
* `has_name(x, nm)`, `x %has_name% nm`: does `x` have component `nm`?
* `has_attr(x, attr)`, `x %has_attr% attr`: does `x` have attribute `attr`?
* `is_count(x)`: is x a single positive integer?
* `are_equal(x, y)`: are `x` and `y` equal?
* `noNA(x)`: is `x` free from missing values?
* `is.dir(path)`: is `path` a directory?
* `is.writeable(path)`/`is.readable(path)`: is `path` writeable/readable?
* `has_extension(path, extension)`: does `file` have given `extension`?

## `assert_that` and `see_if`

There are two main functions in assertthat: 

* `assert_that()`, which raises an error if any expressions is not true, and 
* `see_if()`, which returns a logical value.

You'll use `assert_that()` in you're own code, but you'll mostly see `see_if()` in the examples (because `R CMD check` requires that examples run without errors.

## Writing your own assertions

If you're writing your own assertions, you can provide custom error messages using the `on_failure()` helper:

```R
is_odd <- function(x) {
  assert_that(is.numeric(x), length(x) == 1)
  x %% 2 == 1
}
assert_that(is_odd(2))
# Error: is_odd(x = 2) is not TRUE

on_failure(is_odd) <- function(call, env) {
  paste0(deparse(call$x), " is even")
}
assert_that(is_odd(2))
# Error: 2 is even
```

The `on_failure` callback is called with two arguments, the `call` of the expression (which has already been standardised with `match.call()`), and `env`, and the environment in which the assertion was executed. This allows you to choose between the value or the variable in your error messages.

Also note the use of `assert_that()` in our new function: assertions flow through function calls ensuring that you get a useful error message at the top level:

```R
assert_that(is_odd("b"))
# Error: x is not a numeric or integer vector
assert_that(is_odd(1:2))
# Error: length(x) not equal to 1
```
