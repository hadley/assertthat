#' @include on-failure.r
NULL

#' Assert input is a scalar.
#' 
#' \code{is.scalar} provides a generic method for checking input is a scalar.
#' \code{is.string}, \code{is.flag}, \code{is.number} and \code{is.count}
#' provide tests for specific types.
#' 
#' @family assertions
#' @param x object to test
#' @name scalar
#' @aliases NULL
NULL

#' @rdname scalar
#' @export
#' @examples
#' # Generic check for scalars
#' see_if(is.scalar("a"))
#' see_if(is.scalar(1:10))
#' 
is.scalar <- function(x) {
  length(x) == 1L
}
on_failure(is.scalar) <- function(call, env) {
  type <- eval(call$type, env)
  paste0(deparse(call$x), " is not a scalar.")
}


#' @rdname scalar
#' @export
#' @examples
#' # string = scalar character vector
#' see_if(is.string(1:3))
#' see_if(is.string(c("a", "b")))
#' see_if(is.string("x"))
#' 
is.string <- function(x) is.character(x) && length(x) == 1
on_failure(is.string) <- function(call, env) {
  paste0(deparse(call$x), " is not a string (a length one character vector).")
}


#' @rdname scalar
#' @export
#' @examples
#' # number = scalar numeric/integer vector
#' see_if(is.number(1:3))
#' see_if(is.number(1.5))
#' 
is.number <- function(x) is.numeric(x) && length(x) == 1
on_failure(is.number) <- function(call, env) {
  paste0(deparse(call$x), " is not a number (a length one numeric vector).")
}

#' @rdname scalar
#' @export
#' @examples
#' # flag = scalar numeric/integer vector
#' see_if(is.flag(1:3))
#' see_if(is.flag("a"))
#' see_if(is.flag(c(FALSE, FALSE, TRUE)))
#' see_if(is.flag(FALSE))
#' 
is.flag <- function(x) is.logical(x) && length(x) == 1
on_failure(is.flag) <- function(call, env) {
  paste0(deparse(call$x), " is not a flag (a length one logical vector).")
}


#' @rdname scalar
#' @export
#' @examples
#' # count = scalar positive integer
#' see_if(is.count("a"))
#' see_if(is.count(-1))
#' see_if(is.count(1:5))
#' see_if(is.count(1.5))
#' see_if(is.count(1))
#' 
is.count <- function(x) {
  if (length(x) != 1) return(FALSE)
  if (!is.integerish(x)) return(FALSE)
  
  x > 0
}
on_failure(is.count) <- function(call, env) {
  paste0(deparse(call$x), " is not a count (a single positive integer)")
}

