base_fs <- new.env(parent = emptyenv())

is_not <- function(thing) {
  function(call, env) {
    paste0(deparse(call[[2]]), " is not ", thing)
  }
}

base_fs$is.character <- is_not("a character vector")
base_fs$is.numeric <- is_not("a numeric or integer vector")
base_fs$is.double <- is_not("a numeric vector")
base_fs$is.integer <- is_not("a numeric vector")

base_fs$file.exists <- function(call, env) {
  path <- eval(call[[2]], env)
  paste0("Path '", path, "' does not exist")
}

base_fs$"==" <- function(call, env) {
  lhs <- paste(deparse(call[[2]]), collapse = "")
  rhs <- paste(deparse(call[[3]]), collapse = "")
  paste0(lhs, " does not equal ", rhs)
}
