#' Assert that certain conditions are true.
#'
#' \code{assert_that} is a drop-in replacement for \code{\link{stopifnot}} but
#' is designed to give informative error messages.
#'
#' @section Assertions:
#'
#' Assertion functions should return a single \code{TRUE} or \code{FALSE}:
#' any other result is an error, and \code{assert_that} will complain about
#' it. This will always be the case for the assertions provided by
#' \code{assertthat}, but you may need be a more careful for
#' base R functions.
#'
#' To make your own assertions that work with \code{assert_that},
#' see the help for \code{\link{on_failure}}.  Alternatively, a custom message
#' can be specified for each call.
#'
#' @param ... unnamed expressions that describe the conditions to be tested.
#'   Rather than combining expressions with \code{&&}, separate them by commas
#'   so that better error messages can be generated.
#' @param env (advanced use only) the environment in which to evaluate the
#'   assertions.
#' @param msg a custom error message to be printed if one of the conditions is
#'   false.
#' @seealso \code{\link{validate_that}}, which returns a message (not an error)
#'   if the condition is false.
#' @export
#' @examples
#' x <- 1
#' # assert_that() generates errors, so can't be usefully run in
#' # examples
#' \dontrun{
#' assert_that(is.character(x))
#' assert_that(length(x) == 3)
#' assert_that(is.dir("asdf"))
#' y <- tempfile()
#' writeLines("", y)
#' assert_that(is.dir(y))
#' assert_that(FALSE, msg = "Custom error message")
#' }
#'
#' # But see_if just returns the values, so you'll see that a lot
#' # in the examples: but remember to use assert_that in your code.
#' see_if(is.character(x))
#' see_if(length(x) == 3)
#' see_if(is.dir(17))
#' see_if(is.dir("asdf"))
#' see_if(5 < 3, msg = "Five is not smaller than three")
assert_that <- function(..., env = parent.frame(), msg = NULL) {
  res <- see_if(..., env = env, msg = msg)
  if (res) return(TRUE)

  stop(assertError(attr(res, "msg")))
}

assertError <- function (message, call = NULL) {
  class <- c("assertError", "simpleError", "error", "condition")
  structure(list(message = message, call = call), class = class)
}

#' @rdname assert_that
#' @export
see_if <- function(..., env = parent.frame(), msg = NULL) {
  asserts <- eval(substitute(alist(...)))

  for (assertion in asserts) {
    res <- tryCatch({
      eval(assertion, env)
    }, assertError = function(e) {
      structure(FALSE, msg = e$message)
    })
    check_result(res)

    # Failed, so figure out message to produce
    if (!res) {
      if (is.null(msg))
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
  if (length(x) != 1) {
    stop("assert_that: length of assertion is not 1", call. = FALSE)
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
# get a friendly error message.
# The code below says you get the first 60 characters plus a ...
fail_default <- function(call, env) {
  call_string <- deparse(call, width.cutoff = 60L)
  if (length(call_string) > 1L) {
      call_string <- paste0(call_string[1L], "...")
  }

  paste0(call_string, " is not TRUE")
}

