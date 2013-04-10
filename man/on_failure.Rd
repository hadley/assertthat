\name{on_failure}
\alias{on_failure}
\alias{on_failure<-}
\title{Custom failure messages for assertions.}
\usage{
  on_failure(x)

  on_failure(x) <- value
}
\arguments{
  \item{x}{a assertion function that returns \code{TRUE} if
  the assertion is met, \code{FALSE} otherwise.}

  \item{value}{a function with parameters \code{call} and
  \code{env} that returns a custom error message as a
  string.}
}
\description{
  Custom failure messages for assertions.
}
\examples{
is_odd <- function(x) {
  assert_that(is.numeric(x), length(x) == 1)
  x \%\% 2 == 1
}
see_if(is_odd(2))

on_failure(is_odd) <- function(call, env) {
  paste0(deparse(call$x), " is even")
}
see_if(is_odd(2))
}

