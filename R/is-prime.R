#' Test if a scalar is prime
#'
#' @description If the algorithm finds a prime \code{a} for which
#'    \code{x \%\% a == 0}, then \code{a} is not a prime. If \code{x} is not a
#'    prime then there exist two primes \code{a} and \code{b} for which
#'    \code{x <- a * b}. Assuming \code{a <= b}, then \code{a <= sqrt(x)}. Hence
#'    the algorithm considers only those \code{a <= sqrt(x)}. It reliase on
#'    precompute primes to make it as fast as possible.
#' @return TRUE when \code{x} is a prime, FALSE when \code{x} is not a prime.
#' @author Thierry Onkelinx
#' @param x The scalar to test
#' @export
is.prime <- function(x){
  assert_that(is.count(x))

  if (x == 1L) {
    return(FALSE)
  }
  return(
    all(x %% primes[primes <= sqrt(x)] != 0)
  )
}
on_failure(is.prime) <- function(call, env) {
  paste0(deparse(call$x), " is not a prime.")
}
