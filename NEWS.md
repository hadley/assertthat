# assertthat (development version)

* `assert_that(inherits(x, c("a", "b")))`, where inheritance is tested
  against multiple target classes, correctly handles failed
  assertions (@MichaelChirico, [#73](https://github.com/hadley/assertthat/issues/73))

# assertthat 0.2.1

* `assert_that()` no longer throws a fatal error on very long custom 
  expressions (@jameslamb, #45)

* `has_name()` now always returns a single `TRUE`/`FALSE`, even if you use it 
  to check multiple names (@jameslamb, #60)

* `is.count()` returns `FALSE` for `NA_real_`, `NaN` and `NA_integer_`. 
  `is.integerish()` returns `FALSE` for `NA_real_` and `NaN` (@drkarthi, #54)

* `is.count()`, `is.flag()`, `is.number()`, and `is.scalar()` now have 
  well-defined behavior for `Inf`, `-Inf`, and finite but large numbers 
  (@jameslamb, #47)

# assertthat 0.2.0

* `assert_that()`, `see_if()`, and `validate_that()` get a `msg` argument 
  that allows you to provide a custom message (@krlmlr, #6)

* `is.named()` returns `TRUE` if an element has `NA` name (#20) 

* New tests cover most assertions (@bpbond, #18, #20)

* Better error message if assertion is length 0 (@paulstaab, #22)
