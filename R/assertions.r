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
