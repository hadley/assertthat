\name{scalar}
\alias{is.count}
\alias{is.flag}
\alias{is.number}
\alias{is.scalar}
\alias{is.string}
\title{Assert input is a scalar.}
\usage{
is.scalar(x)

is.string(x)

is.number(x)

is.flag(x)

is.count(x)
}
\arguments{
  \item{x}{object to test}
}
\description{
\code{is.scala} provides a generic method for checking input is a scalar.
\code{is.string}, \code{is.flag}, \code{is.number} and \code{is.count}
provide tests for specific types.
}
\examples{
# Generic check for scalars
see_if(is.scalar("a"))
see_if(is.scalar(1:10))
# string = scalar character vector
see_if(is.string(1:3))
see_if(is.string(c("a", "b")))
see_if(is.string("x"))
# number = scalar numeric/integer vector
see_if(is.number(1:3))
see_if(is.number(1.5))
# flag = scalar numeric/integer vector
see_if(is.flag(1:3))
see_if(is.flag("a"))
see_if(is.flag(c(FALSE, FALSE, TRUE)))
see_if(is.flag(FALSE))
# flag = scalar positive integer
see_if(is.count("a"))
see_if(is.count(-1))
see_if(is.count(1:5))
see_if(is.count(1.5))
see_if(is.count(1))
}
\seealso{
Other assertions: \code{\link{are_equal}},
  \code{\link{assert-is}}, \code{\link{is.date}},
  \code{\link{is.error}}, \code{\link{is.time}},
  \code{\link{noNA}}, \code{\link{not_empty}}
}

