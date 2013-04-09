\name{assert_that}
\alias{assert_that}
\title{Assert that certain conditions are true.}
\usage{
  assert_that(..., env = parent.frame())
}
\arguments{
  \item{...}{unnamed expressions that describe the
  conditions to be tested.  Rather than combining
  expressions with \code{&&}, separate them by commas so
  that better error messages can be generated.}

  \item{env}{(advanced use only) the environment in which
  to evaluate the assertions.}
}
\description{
  This function works in the same way as
  \code{\link{stopifnot}} but is designed to give
  informative error messages.
}
\examples{
\dontrun{
x <- 1
assert_that(is.character(x))
assert_that(length(x) == 3)
assert_that(dir.exists("asdf"))
y <- tempfile()
writeLines("", y)
assert_that(dir_exists(y))
}
}

