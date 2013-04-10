#' @include base.r
NULL

base_fs$"&&" <- function(call, env) {
  lhs <- eval(call[[2]], env)
  if (!lhs) {
    get_message(lhs, call[[2]], env)
  } else {
    rhs <- eval(call[[3]], env)
    get_message(rhs, call[[3]], env)
  }
}

base_fs$"||" <- function(call, env) {
  lhs <- eval(call[[2]], env)
  l_msg <- get_message(lhs, call[[2]], env)

  rhs <- eval(call[[3]], env)
  r_msg <- get_message(rhs, call[[3]], env)

  paste0(l_msg, " or ", r_msg)
}

base_fs$any <- function(call, env) {
  paste0("No elements of ", deparse(call[[1]]), " are true")
}
base_fs$all <- function(call, env) {
  res <- eval(call[[1]], env)
  i <- which(!res)
  if (length(i) > 10) i <- c(i[1:5], "...")

  paste0("Elements ", paste(i, collapse = ", "), " of ",
    deparse(call[[1]]), " are not true")
}
