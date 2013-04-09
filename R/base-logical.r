#' @include base.r
NULL

base_fs$"==" <- function(call, env) {
  lhs <- paste(deparse(call[[2]]), collapse = "")
  rhs <- paste(deparse(call[[3]]), collapse = "")
  paste0(lhs, " does not equal ", rhs)
}
