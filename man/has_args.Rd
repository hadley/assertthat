\name{has_args}
\alias{\%has_args\%}
\alias{has_args}
\title{Check a function has specified arguments}
\usage{
  has_args(f, args, exact = FALSE)

  %has_args%(f, args, exact = FALSE)
}
\arguments{
  \item{f}{a function}

  \item{args}{a character vector of argument names}

  \item{exact}{if \code{TRUE}, argument names must match
  \code{args} exactly (order and value); otherwise \code{f}
  just must have at least \code{args} in any order}
}
\description{
  Check a function has specified arguments
}
\examples{
has_args(mean, "x")
has_args(mean, "x", exact = TRUE)

see_if(mean \%has_args\% "x")
see_if(mean \%has_args\% "y")
}

