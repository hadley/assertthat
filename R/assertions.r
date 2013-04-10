#' @export
is.string <- function(x) is.character(x) && length(x) == 1
on_failure(is.string) <- function(call, env) {
  paste0(deparse(call$x), " is not a string.")
}

#' @export
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

#' @export
is_count <- function(x) {
  assert_that(length(x) == 1, is.numeric(x))

  if (is.double(x)) {
    assert_that(trunc(x) == x)
  }
}
on_failure(is_count) <- function(call, env) {
  paste0(deparse(call$x), " is not a single positive integer")
}

#' @export
anyNA <- function(x) {
  any(is.na(x))
}
on_failure(anyNA) <- function(call, env) {
  paste0(deparse(call$x), " contains missing values")
}


#' @export
are_equal <- function(x, y) {
  isTRUE(all.equal(x, y))
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
