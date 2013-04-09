# Or, if you create your own functions, you can add the message as an
# attribute of the function.
is.string <- function(x) is.character(x) && length(x) == 1
on_failure(is.string) <- function(call, env) {
  paste0(deparse(call$x), " is not a string.")
}

is.flag <- function(x) identical(x, TRUE) || identical(x, FALSE)
on_failure(is.flag) <- function(call, env) {
  paste0(deparse(call$x), " is not TRUE or FALSE.")
}
