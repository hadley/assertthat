#' @include on-failure.r
NULL

#' Is an object a string?
#'
#' @family assertions
#' @param x object to test
#' @export
#' @examples
#' see_if(is.string(1:3))
#' see_if(is.string(c("a", "b")))
#' see_if(is.string("x"))
is.string <- function(x) is.character(x) && length(x) == 1
on_failure(is.string) <- function(call, env) {
  paste0(deparse(call$x), " is not a length one character vector.")
}

#' Is an object a boolean flag?
#'
#' @param x object to test
#' @family assertions
#' @export
#' @examples
#' see_if(is.flag(1:3))
#' see_if(is.flag("a"))
#' see_if(is.flag(c(FALSE, FALSE, TRUE)))
#' see_if(is.flag(FALSE)
is.flag <- function(x) identical(x, TRUE) || identical(x, FALSE)
on_failure(is.flag) <- function(call, env) {
  paste0(deparse(call$x), " is not TRUE or FALSE.")
}

#' @export
has_attr <- function(x, which) !is.null(attr(x, which, exact = TRUE))
on_failure(has_attr) <- function(call, env) {
  paste0(deparse(call$x), " does not have attribute ", eval(call$which, env))
}
"%has_attr%" <- has_attr

#' @export
has_name <- function(x, which) which %in% names(x)
on_failure(has_name) <- function(call, env) {
  paste0(deparse(call$x), " does not have name ", eval(call$which, env))
}
"%has_name%" <- has_name

#' Is an object a count?
#'
#' @param x object to test
#' @family assertions
#' @export
#' @examples
#' see_if(is_count("a"))
#' see_if(is_count(-1))
#' see_if(is_count(1:5))
#' see_if(is_count(1.5))
is_count <- function(x) {
  if (length(x) != 1) return(FALSE)
  if (!is.numeric(x)) return(FALSE)

  if (is.double(x) && trunc(x) != x) return(FALSE)
  x > 0
}
on_failure(is_count) <- function(call, env) {
  paste0(deparse(call$x), " is not a single positive integer")
}

#' Does object contain any missing values?
#'
#' @family assertions
#' @param x object to test
#' @export
#' @examples
#' see_if(noNA("a"))
#' see_if(noNA(c(TRUE, NA)))
#' x <- sample(c(1:10, NA), 100, rep = TRUE)
#' see_if(noNA(x))
noNA <- function(x) {
  !(any(is.na(x)))
}
on_failure(noNA) <- function(call, env) {
  n <- sum(is.na(eval(call$x, env)))
  paste0(deparse(call$x), " contains ", n, " missing values")
}

#' Are two objects equal?
#'
#' @param x,y objects to compare
#' @param ... additional arguments passed to \code{\link{all.equal}}
#' @family assertions
#' @export
#' @examples
#' x <- 2
#' see_if(are_equal(x, 1.9))
#' see_if(are_equal(x, 1.999, tol = 0.01))
#' see_if(are_equal(x, 2))
are_equal <- function(x, y, ...) {
  isTRUE(all.equal(x, y, ...))
}
on_failure(are_equal) <- function(call, env) {
  paste0(deparse(call$x), " not equal to ", deparse(call$y))
}

#' @export
is.error <- function(x) inherits(x, "try-error")
on_failure(is.error) <- function(call, env) {
  paste0(deparse(call$x), " is not a try-error")
}

#' @export
is.time <- function(x) inherits(x, "POSIXt")
on_failure(is.time) <- function(call, env) {
  paste0(deparse(call$x), " is not a POSIXt date-time object")
}

#' @export
is.date <- function(x) inherits(x, "Date")
on_failure(is.date) <- function(call, env) {
  paste0(deparse(call$x), " is not a Date object")
}

#' @export
has_args <- function(f, args, exact = FALSE) {
  assert_that(is.function(f))

  if (exact) {
    identical(args, names(formals(f)))
  } else {
    all(args %in% names(formals(f)))
  }
}
on_failure(has_args) <- function(call, env) {
  args <- paste(eval(call$args, env), collapse = ", ")
  paste0("Function " , deparse(call$f), " does not have arguments ", args)
}

#' @export
is.empty <- function(x) {
  any((dim(x) %||% length(x)) == 0)
}
on_failure(is.empty) <- function(call, env) {
  paste0(deparse(call$x), " has an empty dimension")
}
