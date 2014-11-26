#' @include on-failure.r
NULL

path_is_not <- function(thing, var = "x") {
  function(call, env) {
    paste0("Path '", eval(call[[var]], env), "' is not ", thing)
  }
}

#' Useful test related to files
#'
#' @param path a file path to examine
#' @name assertions-file
#' @examples
#' see_if(is.dir(1))
#'
#' tmp <- tempfile()
#' see_if(file.exists(tmp))
#' see_if(is.dir(tmp))
#'
#' writeLines("x", tmp)
#' see_if(file.exists(tmp))
#' see_if(is.dir(tmp))
#' see_if(is.writeable(tmp))
#' see_if(is.readable(tmp))
#' unlink(tmp)
#'
#' see_if(is.readable(tmp))
NULL

#' @export
#' @rdname assertions-file
is.dir <- function(path) {
  assert_that(is.string(path), file.exists(path))
  file.info(path)$isdir
}
on_failure(is.dir) <- path_is_not("a directory", "path")

#' @export
#' @rdname assertions-file
is.writeable <- function(path) {
  assert_that(is.string(path), file.exists(path))
  file.access(path, mode = 2)[[1]] == 0
}
on_failure(is.writeable) <- path_is_not("writeable", "path")

#' @export
#' @rdname assertions-file
is.readable <- function(path) {
  assert_that(is.string(path), file.exists(path))
  file.access(path, mode = 4)[[1]] == 0
}
on_failure(is.readable) <- path_is_not("readable", "path")

#' @param ext extension to test for (\code{has_extension} only)
#' @export
#' @rdname assertions-file
has_extension <- function(path, ext) {
  tools::file_ext(path) == ext
}
on_failure(has_extension) <- function(call, env) {
  path <- eval(call$path, env)
  ext <- eval(call$ext, env)
  paste0("File '", basename(path), "' does not have extension", ext)
}
