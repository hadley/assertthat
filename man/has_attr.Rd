\name{has_attr}
\alias{\%has_attr\%}
\alias{\%has_name\%}
\alias{has_attr}
\alias{has_name}
\title{Has attribute or name?}
\usage{
  has_attr(x, which)

  %has_attr%(x, which)

  has_name(x, which)

  %has_name%(x, which)
}
\arguments{
  \item{x}{object to test}

  \item{which}{name or attribute}
}
\description{
  Has attribute or name?
}
\examples{
has_attr(has_attr, "fail")
x <- 10
x \%has_attr\% "a"

y <- list(a = 1, b = 2)
see_if(y \%has_name\% "c")
}

