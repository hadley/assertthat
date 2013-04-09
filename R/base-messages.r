not_a <- function(call, thing) {
  paste0("Path '", path, "' does not exist")
}

# You can provide more useful error message for base functions by adding them
# to this list
base_fs <- list(
  is.character = function(call, env) {
    paste0(deparse(call[[2]]), " is not a character vector")
  },
  is.numeric = function(call, env) {
    paste0(deparse(call[[2]]), " is not a numeric or integer vector")
  },
  is.double = function(call, env) {
    paste0(deparse(call[[2]]), " is not a numeric vector")
  },
  is.integer = function(call, env) {
    paste0(deparse(call[[2]]), " is not a numeric vector")
  },
  file.exists = function(call, env) {
    path <- eval(call[[2]], env)
    paste0("Path '", path, "' does not exist")
  },
  "==" = function(call, env) {
    lhs <- paste(deparse(call[[2]]), collapse = "")
    rhs <- paste(deparse(call[[3]]), collapse = "")
    paste0(lhs, " does not equal ", rhs)
  }
)
