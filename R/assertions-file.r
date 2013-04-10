path_is_not <- function(thing, var = "x") {
  function(call, env) {
    paste0("Path '", eval(call[[var]], env), "' is not ", thing)
  }
}

#' Useful test related to files
#'
#' @param x an existing path
#' @export
#' @name assertions-file
NULL

#' @export
#' @rdname assertions-file
is.dir <- function(x) file.info(x)$isdir
on_failure(is.dir) <- path_is_not("a directory")

#' @export
#' @rdname assertions-file
is.writeable <- function(path) file.access(path, mode = 2)
on_failure(is.writeable) <- path_is_not("writeable")

#' @export
#' @rdname assertions-file
is.readable <- function(path) file.access(path, mode = 4)
on_failure(is.readable) <- path_is_not("readable")

#' @importFrom tools file_ext
has_extension <- function(x, ext) {
  file_ext(x) == ext
}
on_failure(has_extension) <- function(call, env) {
  path <- eval(call$x, env)
  ext <- eval(call$ext, env)
  paste0("File '", basename(path), "' does not have extension", ext)
}


dir_exists <- function(x) {
  assert_that(is.string(x), file.exists(x), is.dir(x))
}
is_writeable <- function(path) {
  assert_that(is.string(x), file.exists(x), is.writeable(x))
}
is_readable <- function(path) {
  assert_that(is.string(x), file.exists(x), is.readable(x))
}
