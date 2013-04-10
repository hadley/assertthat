\name{noNA}
\alias{noNA}
\title{Does object contain any missing values?}
\usage{
  noNA(x)
}
\description{
  Does object contain any missing values?
}
\examples{
see_if(noNA("a"))
see_if(noNA(c(TRUE, NA)))
x <- sample(c(1:10, NA), 100, rep = TRUE)
see_if(noNA(x))
}
\seealso{
  Other assertions: \code{\link{are_equal}},
  \code{\link{is.flag}}, \code{\link{is.string}},
  \code{\link{is_count}}
}

