#' @include base.r
NULL

base_fs$file.exists <- function(call, env) {
  path <- eval(call[[2]], env)
  paste0("Path '", path, "' does not exist")
}
