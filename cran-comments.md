## Test environments
* local OS X install, R 3.3.2
* ubuntu 12.04 (on travis-ci), R 3.3.2
* win-builder (devel and release)

## R CMD check results

0 errors | 0 warnings | 1 note

## revdepcheck results

We checked 184 reverse dependencies (169 from CRAN + 15 from BioConductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 5 new problems
 * We failed to check 8 packages

Issues with CRAN packages are summarised below.

## revdepcheck results

We checked 184 reverse dependencies (171 from CRAN + 13 from BioConductor), comparing R CMD check results across CRAN and dev versions of this package.

 * We saw 4 new problems
 * We failed to check 5 packages

Issues with CRAN packages are summarised below.

### New problems
(This reports the first line of each new failure)

* dynutils
  checking tests ...

* ExpDE
  checking examples ... ERROR

* MOEADr
  checking examples ... ERROR
  checking re-building of vignette outputs ... WARNING

* prioritizr
  checking tests ...

### Failed to check

* awsjavasdk      (failed to install)
* circumplex      (failed to install)
* rrd             (failed to install)
* themetagenomics (check timed out)
* updog           (failed to install)