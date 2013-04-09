# assertthat

Assert that provides a drop in replacement for `stopifnot()` that makes it easy to check the pre- and post-conditions of your functions, while producing useful error messages.  

This is a good defensive programming technique, and is useful as source-code documentation: you can see exactly what your function expects when you come back to it in the future.  It is partly a response to the lack of static typing in R, but it is much more general. There are many conditions (like `length(x) == length(y)`) that are difficult to assert in a type system.
