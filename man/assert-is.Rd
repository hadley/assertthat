\name{assert-is}
\alias{assert-is}
\alias{is.date}
\alias{is.error}
\alias{is.time}
\title{Missing is functions.}
\usage{
is.error(x)

is.time(x)

is.date(x)
}
\arguments{
  \item{x}{object to test}
}
\description{
Missing is functions.
}
\examples{
a <- Sys.time()
is.time(a)
b <- Sys.Date()
is.date(b)
c <- try(stop("!!"))
is.error(c)
}
\seealso{
Other assertions: \code{\link{are_equal}},
  \code{\link{is.flag}}, \code{\link{is.string}},
  \code{\link{is_count}}, \code{\link{noNA}},
  \code{\link{not_empty}}
}

