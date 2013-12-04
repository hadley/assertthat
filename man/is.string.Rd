\name{is.string}
\alias{is.string}
\title{Is an object a string?}
\usage{
is.string(x)
}
\arguments{
  \item{x}{object to test}
}
\description{
Is an object a string?
}
\examples{
see_if(is.string(1:3))
see_if(is.string(c("a", "b")))
see_if(is.string("x"))
}
\seealso{
Other assertions: \code{\link{are_equal}},
  \code{\link{assert-is}}, \code{\link{is.date}},
  \code{\link{is.error}}, \code{\link{is.flag}},
  \code{\link{is.time}}, \code{\link{is_count}},
  \code{\link{noNA}}, \code{\link{not_empty}}
}

