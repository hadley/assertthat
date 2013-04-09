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

not_a <- function(call, thing) {
  paste0("Path '", path, "' does not exist")
}

# Or, if you create your own functions, you can add the message as an
# attribute of the function.
is.string <- function(x) is.character(x) && length(x) == 1
attr(is.string, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not a string.")
}

"%has_attr%" <- function(x, which) !is.null(attr(x, which, exact = TRUE))

has_attribute <- function(x, which) !is.null(attr(x, which, exact = TRUE))

has_name <- function(x, which) which %in% names(x)


is.flag <- function(x) identical(x, TRUE) || identical(x, FALSE)
attr(is.flag, "fail") <- function(call, env) {
  paste0(deparse(call$x), " is not TRUE or FALSE.")
}

is.dir <- function(x) file.info(x)$isdir
attr(is.dir, "fail") <- function(call, env) {
  paste0("Path '", eval(call$x, env), "' is not a directory.")
}

# You can create compound assertions by calling assert_that within your
# assertion function. (Probably need slightly better way to handle this
# so it doesn't clutter up the traceback)
dir.exists <- function(x) {
  assert_that(is.string(x), file.exists(x), is.dir(x))
}

# The default failure message works in the same way as stopifnot, so you can
# continue to use any function that returns a logical value: you just won't
# get as nice an error message
fail_default <- function(call, env) {
  call_string <- deparse(call, width.cutoff = 60L)
  if (length(call_string) > 1L) ch <- paste0(call_string[1L], "...")

  paste0(call_string, " is not TRUE")
}

"%||%" <- function(a, b) if (is.null(a)) b else a
