\name{is_count}
\alias{is_count}
\title{Is an object a count?}
\usage{
  is_count(x)
}
\arguments{
  \item{x}{object to test}
}
\description{
  Is an object a count?
}
\examples{
see_if(is_count("a"))
see_if(is_count(-1))
see_if(is_count(1:5))
see_if(is_count(1.5))
}
\seealso{
  Other assertions: \code{\link{are_equal}},
  \code{\link{is.flag}}, \code{\link{is.string}},
  \code{\link{noNA}}
}

