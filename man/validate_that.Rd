\name{validate_that}
\alias{validate_that}
\title{Validate that certain conditions are true.}
\usage{
validate_that(..., env = parent.frame())
}
\arguments{
  \item{...}{unnamed expressions that describe the
  conditions to be tested.  Rather than combining
  expressions with \code{&&}, separate them by commas so
  that better error messages can be generated.}

  \item{env}{(advanced use only) the environment in which
  to evaluate the assertions.}
}
\value{
A \code{character} vector if the assertion is false, or \code{TRUE}
if the assertion is true.
}
\description{
\code{validate_that} is an alternative to the function
\code{\link{assert_that}}, that returns a \code{character} vector. This
makes them easier to use within S4 \code{"validate"} methods.
}
\examples{
x <- 1
# assert_that() generates errors, so can't be usefully run in
# examples
validate_that(is.numeric(x))
validate_that(is.character(x))
validate_that(length(x) == 3)
validate_that(is.dir("asdf"))
y <- tempfile()
writeLines("", y)
validate_that(is.dir(y))
}
\seealso{
\code{\link{assert_that}}, which returns an error if the condition
is false.
}

