path_is_not <- function(thing, var = "x") {
  function(call, env) {
    paste0("Path '", eval(call[[var]], env), "' is not ", thing)
  }
}

is.dir <- function(x) file.info(x)$isdir
on_failure(is.dir) <- path_is_not("a directory")

is.writeable <- function(path) file.access(path, mode = 2)
on_failure(is.writeable) <- path_is_not("writeable")

is.readable <- function(path) file.access(path, mode = 4)
on_failure(is.readable) <- path_is_not("readable")

dir_exists <- function(x) {
  assert_that(is.string(x), file.exists(x), is.dir(x))
}
is_writeable <- function(path) {
  assert_that(is.string(x), file.exists(x), is.writeable(x))
}
is_readable <- function(path) {
  assert_that(is.string(x), file.exists(x), is.readable(x))
}
