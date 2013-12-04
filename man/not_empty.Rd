\name{not_empty}
\alias{not_empty}
\title{Check an object doesn't have any empty dimensions}
\usage{
not_empty(x)
}
\arguments{
  \item{x}{object to test}
}
\description{
Check an object doesn't have any empty dimensions
}
\examples{
not_empty(numeric())
not_empty(mtcars[0, ])
not_empty(mtcars[, 0])
}
\seealso{
Other assertions: \code{\link{are_equal}},
\code{\link{assert-is}}, \code{\link{is.date}},
\code{\link{is.error}}, \code{\link{is.flag}},
\code{\link{is.string}}, \code{\link{is.time}},
\code{\link{is_count}}, \code{\link{noNA}}
}

