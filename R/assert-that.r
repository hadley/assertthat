#' Assert that certain conditions are true.
#'
#' This function works in the same way as \code{\link{stopifnot}} but is
#' designed to give informative error messages.
#'
#' @param ... unnamed expressions that describe the conditions to be tested.
#'   Rather than combining expressions with \code{&&}, separate them by commas
#'   so that better error messages can be generated.
#' @param env (advanced use only) the environment in which to evaluate the
#'   assertions.
#' @export
#' @examples
#' \dontrun{
#' x <- 1
#' assert_that(is.character(x))
#' assert_that(length(x) == 3)
#' assert_that(dir.exists("asdf"))
#' y <- tempfile()
#' writeLines("", y)
#' assert_that(dir_exists(y))
#' }
assert_that <- function(..., env = parent.frame()) {
  res <- see_if(..., env = env)
  if (res) return(TRUE)

  stop(assertError(attr(res, "msg")))
}

see_if <- function(..., env = parent.frame()) {
  asserts <- eval(substitute(alist(...)))

  for (assertion in asserts) {
    res <- tryCatch({
      eval(assertion, env = env)
    }, assertError = function(e) {
      structure(FALSE, msg = e$message)
    })
    check_result(res)

    # Failed, so figure out message to produce
    if (!res) {
      msg <- get_message(res, assertion, env)
      return(structure(FALSE, msg = msg))
    }
  }

  res
}

check_result <- function(x) {
  if (!is.logical(x))
    stop("assert_that: assertion must return a logical value", call. = FALSE)
  if (any(is.na(x)))
    stop("assert_that: missing values present in assertion", call. = FALSE)
  if (length(x) > 1) {
    stop("assert_that: assertion has length greater than 1", call. = FALSE)
  }

  TRUE
}

get_message <- function(res, call, env = parent.frame()) {
  stopifnot(is.call(call), length(call) >= 1)

  if (has_attr(res, "msg")) {
    return(attr(res, "msg"))
  }

  f <- eval(call[[1]], env)
  if (!is.primitive(f)) call <- match.call(f, call)
  fname <- deparse(call[[1]])

  fail <- on_failure(f) %||% base_fs[[fname]] %||% fail_default
  fail(call, env)
}

# The default failure message works in the same way as stopifnot, so you can
# continue to use any function that returns a logical value: you just won't
# get as nice an error message
fail_default <- function(call, env) {
  call_string <- deparse(call, width.cutoff = 60L)
  if (length(call_string) > 1L) ch <- paste0(call_string[1L], "...")

  paste0(call_string, " is not TRUE")
}

"on_failure<-" <- function(x, value) {
  stopifnot(is.function(x), identical(names(formals(value)), c("call", "env")))
  attr(x, "fail") <- value
  x
}
on_failure <- function(x) attr(x, "fail")

assertError <- function (message, call = NULL) {
  class <- c("assertError", "simpleError", "error", "condition")
  structure(list(message = message, call = call), class = class)
}
