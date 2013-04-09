# Or, if you create your own functions, you can add the message as an
# attribute of the function.
is.string <- function(x) is.character(x) && length(x) == 1
attr(is.string, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not a string.")
}

is.flag <- function(x) identical(x, TRUE) || identical(x, FALSE)
attr(is.flag, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not TRUE or FALSE.")
}

is.dir <- function(x) file.info(x)$isdir
attr(is.dir, "fail") <- function(call, env) {
  paste0("Path '", eval(call$x, env), "' is not a directory.")
}

# You can create compound assertions by calling assert_that within your
# assertion function. (Probably need slightly better way to handle this
# so it doesn't clutter up the traceback)
dir.exists <- function(x) {
  assert_that(is.string(x), file.exists(x), is.dir(x))
}
