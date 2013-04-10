\name{is.flag}
\alias{is.flag}
\title{Is an object a boolean flag?}
\usage{
  is.flag(x)
}
\arguments{
  \item{x}{object to test}
}
\description{
  Is an object a boolean flag?
}
\examples{
see_if(is.flag(1:3))
see_if(is.flag("a"))
see_if(is.flag(c(FALSE, FALSE, TRUE)))
see_if(is.flag(FALSE))
}
\seealso{
  Other assertions: \code{\link{are_equal}},
  \code{\link{assert-is}}, \code{\link{is.date}},
  \code{\link{is.error}}, \code{\link{is.string}},
  \code{\link{is.time}}, \code{\link{is_count}},
  \code{\link{noNA}}
}

