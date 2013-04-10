#' Custom failure messages for assertions.
#'
#' @param x a assertion function that returns \code{TRUE} if the assertion
#'   is met, \code{FALSE} otherwise.
#' @param value a function with parameters \code{call} and \code{env}
#'   that returns a custom error message as a string.
#' @export
#' @examples
#' is_odd <- function(x) {
#'   assert_that(is.numeric(x), length(x) == 1)
#'   x %% 2 == 1
#' }
#' see_if(is_odd(2))
#'
#' on_failure(is_odd) <- function(call, env) {
#'   paste0(deparse(call$x), " is even")
#' }
#' see_if(is_odd(2))
on_failure <- function(x) attr(x, "fail")


#' @export
#' @rdname on_failure
#' @usage on_failure(x) <- value
"on_failure<-" <- function(x, value) {
  stopifnot(is.function(x), identical(names(formals(value)), c("call", "env")))
  attr(x, "fail") <- value
  x
}
