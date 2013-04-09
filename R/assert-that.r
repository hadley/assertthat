#' Assert that certain conditions are true.
#'
#' This function works in the same way as \code{\link{stopifnot}} but is
#' designed to give informative error messages.
#'
#' @examples
#' \dontrun{
#' x <- 1
#' assert_that(is.character(x))
#' assert_that(length(x) == 3)
#' assert_that(dir.exists("asdf"))
#' y <- "README.md"
#' assert_that(dir.exists(y))
#' }
assert_that <- function(..., env = parent.frame()) {
  asserts <- as.list(sys.call())[-1]

  # Set global state to determine in an assert_that is nested inside another
  # assert_that - if so, it will return the message instead of erroring out
  # This reduces the depth of the traceback and makes it easier for users
  # to understand what's gone wrong.
  in_assert <- getOption("in_assert", FALSE)
  if (!in_assert) {
    old_ops <- options(in_assert = TRUE)
    on.exit(old_ops)
  }

  for (assertion in asserts) {
    check_result(res <- eval(assertion, env = env))
    if (res) next

    if (res %has_attr% "msg") {
      msg <- attr(res, "msg")
    } else {
      msg <- get_message(assertion, env)
    }

    if (in_assert) {
      return(structure(FALSE, msg = msg))
    } else {
      stop(msg, call. = FALSE)
    }
  }

  invisible(TRUE)
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

get_message <- function(call, env = parent.frame()) {
  stopifnot(is.call(call), length(call) >= 1)

  f <- eval(call[[1]], env)
  if (!is.primitive(f)) call <- match.call(f, call)
  fname <- deparse(call[[1]])

  fail <- attr(f, "fail") %||% base_fs[[fname]] %||% fail_default
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
