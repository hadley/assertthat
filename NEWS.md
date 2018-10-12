# assertthat 0.2.0.9000
 
* `has_name()` now rejects attempts to check multiple names in a single function call (@jameslamb, #46)

# assertthat 0.2.0

* `assert_that()`, `see_if()`, and `validate_that()` get a `msg` argument 
  that allows you to provide a custom message (@krlmlr, #6)
  
* New tests cover most assertions (@bpbond, #18, #20)

* `is.named()` returns `TRUE` if an element has `NA` name (#20)

* Better error message if assertion is length 0 (@paulstaab, #22)

* `is.count()` returns `FALSE` for `NA_real_`, `NaN` and `NA_integer_`. `is.integerish()` returns `FALSE` for `NA_real_` and `NaN` (@drkarthi, #54)
