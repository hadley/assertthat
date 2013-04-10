#' @include base.r
NULL

base_fs$file.exists <- function(call, env) {
  path <- eval(call[[2]], env)
  paste0("Path '", path, "' does not exist")
}

base_fs$anyDuplicated <- function(call, env) {
  paste0(call$x, " is not unique")
}

base_fs$identical <- function(call, env) {
  paste0(deparse(call$x), " not identical to ", deparse(call$y))
}
