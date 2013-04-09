"%is_not%" <- function(call, thing) {
  paste0(deparse(call[[2]]), " is not ", thing)
}

base_fs <- new.env(parent = emptyenv())

# You can provide more useful error message for base functions by adding them
# to this list

base_fs$is.character <- function(call, env) {
  call %is_not% "a character vector"
}
base_fs$is.numeric <- function(call, env) {
  call %is_not% "a numeric or integer vector"
}
base_fs$is.double <- function(call, env) {
  call %is_not% "a numeric vector"
}
base_fs$is.integer <- function(call, env) {
  call %is_not% "a numeric vector"
}

base_fs$file.exists <- function(call, env) {
  path <- eval(call[[2]], env)
  paste0("Path '", path, "' does not exist")
}

base_fs$"==" <- function(call, env) {
  lhs <- paste(deparse(call[[2]]), collapse = "")
  rhs <- paste(deparse(call[[3]]), collapse = "")
  paste0(lhs, " does not equal ", rhs)
}
