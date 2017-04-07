# recalculate the primes as large as sqrt(.Machine$integer.max)
# these are required for is.prime()
primes <- 2L
candidate <- seq.int(3L, sqrt(.Machine$integer.max) * 1.01, by = 2)
while (length(candidate) > 0) {
  # first value in candidate is a prime
  primes <- c(primes, candidate[1])
  # remove it's multiples from candidate
  candidate <- candidate[candidate %% candidate[1] != 0]
}
save(primes, file = "R/sysdata.rda")
tools::resaveRdaFiles("R/sysdata.rda")
