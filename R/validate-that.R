#' Validate that certain conditions are true.
#'
#' \code{validate_that} is an alternative to the function
#' \code{\link{assert_that}}, that returns a \code{character} vector. This
#' makes them easier to use within S4 \code{"validate"} methods.
#'
#' @inheritParams assert_that
#' @return A \code{character} vector if the assertion is false, or \code{TRUE}
#' if the assertion is true.
#' @export
#' @seealso \code{\link{assert_that}}, which returns an error if the condition
#' is false.
#' @examples
#' x <- 1
#' # assert_that() generates errors, so can't be usefully run in
#' # examples
#' validate_that(is.numeric(x))
#' validate_that(is.character(x))
#' validate_that(length(x) == 3)
#' validate_that(is.dir("asdf"))
validate_that <- function(..., env = parent.frame(), msg = NULL) {
  res <- see_if(..., env = env, msg = msg)
  if (res) return(TRUE)
  return(attr(res, "msg"))
}
