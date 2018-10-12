#' @include on-failure.r
NULL

is.integerish <- function(x) {
  # using trunc() to deal with very large numbers (including Inf) and is.na() to deal with NaN and NA_real_
  res <- is.integer(x) || (is.numeric(x) && all(x == trunc(x)) && !is.na(x))
  res
}

# is.positive.integer
# is.negative.integer
# is.positive.double
# is.negative.double

is.named <- function(x) {
  nm <- names(x)
  !is.null(nm) && all(!is.na(nm) & nm != "")
}
on_failure(is.named) <- function(call, env) {
  paste0("Not all elements of ", deparse(call$x), " have names.")
}

#' Has attribute or name?
#'
#' @param x object to test
#' @param which name or attribute
#' @export
#' @examples
#' has_attr(has_attr, "fail")
#' x <- 10
#' x %has_attr% "a"
#'
#' y <- list(a = 1, b = 2)
#' see_if(y %has_name% "c")
has_attr <- function(x, which) !is.null(attr(x, which, exact = TRUE))
on_failure(has_attr) <- function(call, env) {
  paste0(deparse(call$x), " does not have attribute ", eval(call$which, env))
}
#' @export
#' @rdname has_attr
"%has_attr%" <- has_attr

#' @export
#' @rdname has_attr
has_name <- function(x, which){
    assert_that(is.scalar(which), msg = "multiple values passed to has_name")
    which %in% names(x)
}
on_failure(has_name) <- function(call, env) {
  paste0(deparse(call$x), " does not have name ", eval(call$which, env))
}
#' @export
#' @rdname has_attr
"%has_name%" <- has_name

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

#' Missing is functions.
#'
#' @param x object to test
#' @family assertions
#' @name assert-is
#' @aliases NULL
#' @examples
#' a <- Sys.time()
#' is.time(a)
#' b <- Sys.Date()
#' is.date(b)
#' c <- try(stop("!!"))
#' is.error(c)
NULL

#' @export
#' @rdname assert-is
is.error <- function(x) inherits(x, "try-error")
on_failure(is.error) <- function(call, env) {
  paste0(deparse(call$x), " is not a try-error")
}

#' @export
#' @rdname assert-is
is.time <- function(x) inherits(x, "POSIXt")
on_failure(is.time) <- function(call, env) {
  paste0(deparse(call$x), " is not a POSIXt date-time object")
}

#' @export
#' @rdname assert-is
is.date <- function(x) inherits(x, "Date")
on_failure(is.date) <- function(call, env) {
  paste0(deparse(call$x), " is not a Date object")
}

#' Check a function has specified arguments
#'
#' @param f a function
#' @param args a character vector of argument names
#' @param exact if \code{TRUE}, argument names must match \code{args}
#'   exactly (order and value); otherwise \code{f} just must have at least
#'   \code{args} in any order
#' @export
#' @examples
#' has_args(mean, "x")
#' has_args(mean, "x", exact = TRUE)
#'
#' see_if(mean %has_args% "x")
#' see_if(mean %has_args% "y")
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
#' @rdname has_args
"%has_args%" <- function(f, args) has_args(f, args)

#' Check an object doesn't have any empty dimensions
#'
#' @param x object to test
#' @family assertions
#' @export
#' @examples
#' not_empty(numeric())
#' not_empty(mtcars[0, ])
#' not_empty(mtcars[, 0])
not_empty <- function(x) {
  all((dim(x) %||% length(x)) != 0)
}
on_failure(not_empty) <- function(call, env) {
  paste0(deparse(call$x), " has an empty dimension")
}
