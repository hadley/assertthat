#' @include base.r
NULL

logical_is_not <- function(failed) {
  function(call, env) {
    lhs <- paste(deparse(call[[2]]), collapse = "")
    rhs <- paste(deparse(call[[3]]), collapse = "")
    paste0(lhs, " not ", failed, " ", rhs)
  }
}

base_fs$"==" <- logical_is_not("equal to")
base_fs$"<" <-  logical_is_not("less than")
base_fs$">" <-  logical_is_not("greater than")
base_fs$">=" <- logical_is_not("greater than or equal to")
base_fs$"<=" <- logical_is_not("less than or equal to")
base_fs$"!=" <- logical_is_not("not equal to")
