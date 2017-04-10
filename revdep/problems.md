# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.3.2 (2016-10-31) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (1.1.90)             |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |
|date     |2017-04-10                   |

## Packages

|package    |*  |version |date       |source                       |
|:----------|:--|:-------|:----------|:----------------------------|
|assertthat |   |0.2.0   |2017-04-10 |local (hadley/assertthat@NA) |
|testthat   |*  |1.0.2   |2016-04-23 |cran (@1.0.2)                |

# Check results
10 packages with problems

## ALA4R (1.5.6)
Maintainer: Ben Raymond <ben_ala@untan.gl>

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1: expect_null(check_assertions(temp)) at testthat/test-assertions.R:18
  2: expect(is.null(object), sprintf("%s is not null.", lab), info = info)
  3: as.expectation(exp, ..., srcref = srcref)
  4: check_assertions(temp)
  5: ala_fields("assertions", as_is = TRUE)
  6: cached_get(this_url, type = "json")
  7: check_status_code(h$value()[["status"]], extra_info = diag_message, on_redirect = on_redirect, 
         on_client_error = on_client_error, on_server_error = on_server_error)
  8: stop("HTTP status code ", xstatus, " received.\n", diag_msg)
  
  DONE ===========================================================================
  Error: Test failures
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Loading required package: maps

Attaching package: 'maps'

The following object is masked from 'package:plyr':

    ozone

Quitting from lines 261-263 (ALA4R.Rmd) 
Error: processing vignette 'ALA4R.Rmd' failed with diagnostics:
HTTP status code 504 received.
  Either there was an error with the request, or the servers may be down (try again later). If this problem persists please notify the ALA4R maintainers by lodging an issue at https://github.com/AtlasOfLivingAustralia/ALA4R/issues/ or emailing support@ala.org.au
Execution halted

```

## awsjavasdk (0.2.0)
Maintainer: Russell Pierce <russell.pierce@zapier.com>  
Bug reports: https://github.com/zapier/awsjavasdk/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  JNI_GetCreatedJavaVMs returned -1
  1: load_sdk() at testthat/test-awsjavasdk.R:75
  2: rJava::.jpackage("awsjavasdk", morePaths = grep(".jar", list.files(aws_sdk_root(), 
         recursive = TRUE, full.names = TRUE), value = TRUE))
  3: .jinit()
  
  testthat results ================================================================
  OK: 2 SKIPPED: 5 FAILED: 2
  1. Error: Alternate install location (@test-awsjavasdk.R#62) 
  2. Error: sdk loads and is usable after a detach in an alternate location (@test-awsjavasdk.R#75) 
  
  Error: testthat unit tests failed
  Execution halted
```

## CausalImpact (1.2.0)
Maintainer: Alain Hauser <alhauser@google.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘bsts’ ‘Boom’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## eulerr (1.1.0)
Maintainer: Johan Larsson <johanlarsson@outlook.com>  
Bug reports: https://github.com/jolars/eulerr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘eulerr’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/eulerr.Rcheck/00install.out’ for details.
```

## HARtools (0.0.5)
Maintainer: John Harrison <johndharrison0@gmail.com>  
Bug reports: https://github.com/johndharrison/HARtools/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 67-70 (Basic_use.Rmd) 
Error: processing vignette 'Basic_use.Rmd' failed with diagnostics:
HTTP error 403.
Execution halted

```

## milr (0.2.0)
Maintainer: Ping-Yang Chen <pychen.ping@gmail.com>  
Bug reports: https://github.com/PingYangChen/milr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘milr’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/milr.Rcheck/00install.out’ for details.
```

## prcbench (0.6.2)
Maintainer: Takaya Saito <takaya.saito@outlook.com>  
Bug reports: https://github.com/takayasaito/prcbench/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘prcbench-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: ToolAUCCalculator
> ### Title: R6 class of the AUCCalculator tool
> ### Aliases: ToolAUCCalculator
> ### Keywords: datasets
> 
> ### ** Examples
> 
> ## Initialization
> toolauccalc <- ToolAUCCalculator$new()
JavaVM: requested Java version ((null)) not available. Using Java at "" instead.
JavaVM: Failed to load JVM: /bundle/Libraries/libserver.dylib
JavaVM FATAL: Failed to load the jvm library.
Error in rJava::.jinit() : JNI_GetCreatedJavaVMs returned -1
Calls: <Anonymous> ... .get_java_obj -> withVisible -> _f -> <Anonymous> -> .External
Execution halted

checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  1. Error: run_benchmark (@test_main_benchmark.R#32) 
  2. Error: run_benchmark: testset (@test_main_benchmark.R#58) 
  3. Error: run_benchmark: toolset (@test_main_benchmark.R#84) 
  4. Error: run_benchmark: times (@test_main_benchmark.R#131) 
  5. Error: run_benchmark: unit (@test_main_benchmark.R#166) 
  6. Error: run_evalcurve (@test_main_evalcurves.R#6) 
  7. Error: run_evalcurve: testset (@test_main_evalcurves.R#19) 
  8. Error: run_evalcurve: toolset (@test_main_evalcurves.R#32) 
  9. Error: run_evalcurve testscores (@test_main_evalcurves.R#57) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
JavaVM: requested Java version ((null)) not available. Using Java at "" instead.
JavaVM: Failed to load JVM: /bundle/Libraries/libserver.dylib
JavaVM FATAL: Failed to load the jvm library.
Quitting from lines 65-70 (introduction.Rmd) 
Error: processing vignette 'introduction.Rmd' failed with diagnostics:
JNI_GetCreatedJavaVMs returned -1
Execution halted

```

## rpcdsearch (1.0)
Maintainer: David Springate <daspringate@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rpcdsearch’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/rpcdsearch.Rcheck/00install.out’ for details.
```

## saeRobust (0.1.0)
Maintainer: Sebastian Warnholz <Sebastian.Warnholz@fu-berlin.de>  
Bug reports: https://github.com/wahani/saeRobust/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘saeRobust’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/saeRobust.Rcheck/00install.out’ for details.
```

## simcausal (0.5.3)
Maintainer: Oleg Sofrygin <oleg.sofrygin@gmail.com>  
Bug reports: https://github.com/osofr/simcausal/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
node W1, order:1
node W2, order:2
node W3, order:3
...automatically assigning order attribute to some nodes...
node W1, order:1
node W2, order:2
...automatically assigning order attribute to some nodes...
... 8 lines ...
Attaching package: 'ggplot2'

The following object is masked _by_ '.GlobalEnv':

    %+%

Loading required package: lattice
Quitting from lines 2415-2446 (simcausal_vignette.Rnw) 
Error: processing vignette 'simcausal_vignette.Rnw' failed with diagnostics:
package 'survival' 2.39.5 was found, but >= 2.40.1 is required by 'Hmisc'
Execution halted
```

