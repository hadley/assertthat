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
79 packages

## aemo (0.2.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>

0 errors | 0 warnings | 0 notes

## afmToolkit (0.0.1)
Maintainer: Rafael Benitez <rabesua@uv.es>

0 errors | 0 warnings | 0 notes

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

## AntWeb (0.7)
Maintainer: 'Karthik Ram' <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/AntWeb/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
aw_map: no visible global function definition for ‘browseURL’
Undefined global functions or variables:
  browseURL
Consider adding
  importFrom("utils", "browseURL")
to your NAMESPACE file.
```

## ashr (2.0.5)
Maintainer: Peter Carbonetto <pcarbo@uchicago.edu>

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Packages which this enhances but not available for checking:
  ‘REBayes’ ‘Rmosek’
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

## bigrquery (0.3.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/rstats-db/bigrquery/issues

0 errors | 0 warnings | 0 notes

## binman (0.1.0)
Maintainer: John Harrison <johndharrison0@gmail.com>  
Bug reports: https://github.com/johndharrison/binman/issues

0 errors | 0 warnings | 0 notes

## bold (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/bold/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘sangerseqR’
```

## boxr (0.3.4)
Maintainer: Brendan Rocks <foss@brendanrocks.com>  
Bug reports: https://github.com/brendan-r/boxr/issues

0 errors | 0 warnings | 0 notes

## broman (0.65-1)
Maintainer: Karl W Broman <kbroman@biostat.wisc.edu>

0 errors | 0 warnings | 0 notes

## CausalImpact (1.2.0)
Maintainer: Alain Hauser <alhauser@google.com>

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘bsts’ ‘Boom’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## citr (0.2.0)
Maintainer: Frederik Aust <frederik.aust@uni-koeln.de>  
Bug reports: https://github.com/crsh/citr/issues

0 errors | 0 warnings | 0 notes

## coala (0.5.0)
Maintainer: Paul Staab <develop@paulstaab.de>  
Bug reports: https://github.com/statgenlmu/coala/issues

0 errors | 0 warnings | 0 notes

## codyn (1.1.0)
Maintainer: Matthew B. Jones <jones@nceas.ucsb.edu>  
Bug reports: https://github.com/laurenmh/codyn/issues

0 errors | 0 warnings | 0 notes

## dataonderivatives (0.2.1)
Maintainer: Imanuel Costigan <i.costigan@me.com>  
Bug reports: https://github.com/imanuelcostigan/dataonderivatives/issues

0 errors | 0 warnings | 1 note 

```
checking dependencies in R code ... NOTE
Missing or unexported object: ‘readr::col_numeric’
```

## desc (1.1.0)
Maintainer: Gábor Csárdi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/r-pkgs/desc/issues

0 errors | 0 warnings | 0 notes

## dplyr (0.5.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/dplyr/issues

0 errors | 0 warnings | 0 notes

## easypackages (0.1.0)
Maintainer: Jake Sherman <jake@jakesherman.com>

0 errors | 0 warnings | 0 notes

## ecoengine (1.10.0)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/ecoengine/issues

0 errors | 0 warnings | 0 notes

## eulerr (1.1.0)
Maintainer: Johan Larsson <johanlarsson@outlook.com>  
Bug reports: https://github.com/jolars/eulerr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘eulerr’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/eulerr.Rcheck/00install.out’ for details.
```

## FastKNN (0.0.1)
Maintainer: Gaston Besanson <besanson@gmail.com>

0 errors | 0 warnings | 0 notes

## fbar (0.1.23)
Maintainer: Max Conway <conway.max1@gmail.com>

0 errors | 0 warnings | 0 notes

## fiery (0.2.2)
Maintainer: Thomas Lin Pedersen <thomasp85@gmail.com>  
Bug reports: https://github.com/thomasp85/fiery/issues

0 errors | 0 warnings | 0 notes

## fileplyr (0.2.0)
Maintainer: KS Srikanth <sri.teach@gmail.com>  
Bug reports: https://github.com/talegari/fileplyr/issues

0 errors | 0 warnings | 0 notes

## fmbasics (0.1.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>  
Bug reports: https://github.com/imanuelcostigan/fmbasics/issues

0 errors | 0 warnings | 0 notes

## fmdates (0.1.2)
Maintainer: Imanuel Costigan <i.costigan@me.com>  
Bug reports: https://github.com/imanuelcostigan/fmdates/issues

0 errors | 0 warnings | 0 notes

## fuzzr (0.2.0)
Maintainer: Matthew Lincoln <matthew.d.lincoln@gmail.com>  
Bug reports: https://github.com/mdlincoln/fuzzr/issues

0 errors | 0 warnings | 0 notes

## GerminaR (1.1)
Maintainer: Flavio Lozano Isla <flavjack@gmail.com>  
Bug reports: https://github.com/Flavjack/GerminaR/issues

0 errors | 0 warnings | 0 notes

## ggloop (0.1.0)
Maintainer: Luke Smith <luke@protocolvital.info>  
Bug reports: https://github.com/seasmith/ggloop/issues

0 errors | 0 warnings | 0 notes

## ggthemes (3.4.0)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: http://github.com/jrnold/ggthemes

0 errors | 0 warnings | 0 notes

## ggvis (0.4.3)
Maintainer: Winston Chang <winston@rstudio.com>

0 errors | 0 warnings | 0 notes

## gistr (0.3.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/gistr/issues

0 errors | 0 warnings | 0 notes

## grattan (1.4.1.2)
Maintainer: Hugh Parsonage <hugh.parsonage@gmail.com>  
Bug reports: https://github.com/HughParsonage/grattan/issues

0 errors | 0 warnings | 1 note 

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘taxstats’
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

## highcharter (0.5.0)
Maintainer: Joshua Kunst <jbkunst@gmail.com>  
Bug reports: https://github.com/jbkunst/highcharter/issues

0 errors | 0 warnings | 1 note 

```
checking installed package size ... NOTE
  installed size is 16.4Mb
  sub-directories of 1Mb or more:
    doc          13.7Mb
    htmlwidgets   1.8Mb
```

## implyr (0.1.0)
Maintainer: Ian Cook <ian@cloudera.com>  
Bug reports: https://github.com/ianmcook/implyr/issues

0 errors | 0 warnings | 0 notes

## jaatha (3.2.0)
Maintainer: Paul Staab <develop@paulstaab.de>  
Bug reports: https://github.com/statgenlmu/jaatha/issues

0 errors | 0 warnings | 0 notes

## listWithDefaults (1.1.0)
Maintainer: Russell S. Pierce <russell.s.pierce@gmail.com>  
Bug reports: https://github.com/drknexus/listWithDefaults

0 errors | 0 warnings | 0 notes

## liteq (1.0.0)
Maintainer: Gábor Csárdi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/liteq/issues

0 errors | 0 warnings | 0 notes

## luzlogr (0.2.0)
Maintainer: Ben Bond-Lamberty <bondlamberty@pnnl.gov>

0 errors | 0 warnings | 0 notes

## managelocalrepo (0.1.5)
Maintainer: Imanuel Costigan <i.costigan@me.com>

0 errors | 0 warnings | 0 notes

## mcglm (0.3.0)
Maintainer: Wagner Hugo Bonat <wbonat@ufpr.br>  
Bug reports: https://github.com/wbonat/mcglm/issues

0 errors | 0 warnings | 0 notes

## milr (0.2.0)
Maintainer: Ping-Yang Chen <pychen.ping@gmail.com>  
Bug reports: https://github.com/PingYangChen/milr/issues

1 error  | 0 warnings | 0 notes

```
checking whether package ‘milr’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/milr.Rcheck/00install.out’ for details.
```

## MOEADr (0.2.1)
Maintainer: Felipe Campelo <fcampelo@ufmg.br>

0 errors | 0 warnings | 0 notes

## NetworkInference (1.0.0)
Maintainer: Fridolin Linder <fridolin.linder@gmail.com>  
Bug reports: https://github.com/desmarais-lab/NetworkInference/issues

0 errors | 0 warnings | 0 notes

## neuroim (0.0.6)
Maintainer: Bradley Buchsbaum <brad.buchsbaum@gmail.com>

0 errors | 0 warnings | 0 notes

## nima (0.3.0)
Maintainer: Nima Hejazi <nhejazi@berkeley.edu>

0 errors | 0 warnings | 0 notes

## paramlink (1.1-0)
Maintainer: Magnus Dehli Vigeland <magnusdv@studmed.uio.no>

0 errors | 0 warnings | 0 notes

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

## precrec (0.7.1)
Maintainer: Takaya Saito <takaya.saito@outlook.com>  
Bug reports: https://github.com/takayasaito/precrec/issues

0 errors | 0 warnings | 0 notes

## prettyunits (1.0.2)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/prettyunits/issues

0 errors | 0 warnings | 0 notes

## pushoverr (1.0.0)
Maintainer: Brian Connelly <bdc@bconnelly.net>  
Bug reports: https://github.com/briandconnelly/pushoverr/issues

0 errors | 0 warnings | 0 notes

## qualpalr (0.4.0)
Maintainer: Johan Larsson <johanlarsson@outlook.com>  
Bug reports: https://github.com/jolars/qualpalr/issues

0 errors | 0 warnings | 1 note 

```
checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.
```

## ratelimitr (0.3.7)
Maintainer: Tarak Shah <tarak_shah@berkeley.edu>  
Bug reports: https://github.com/tarakc02/ratelimitr/issues

0 errors | 0 warnings | 0 notes

## rchess (0.1)
Maintainer: Joshua Kunst <jbkunst@gmail.com>  
Bug reports: https://github.com/jbkunst/rchess/issues

0 errors | 0 warnings | 0 notes

## RCMIP5 (1.2.0)
Maintainer: Kathe Todd-Brown <ktoddbrown@gmail.com>

0 errors | 0 warnings | 0 notes

## rdrop2 (0.7.0)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/karthik/rdrop2/issues

0 errors | 0 warnings | 0 notes

## remindR (0.0.1)
Maintainer: Bert Gunter <bgunter.4567@gmail.com>

0 errors | 0 warnings | 0 notes

## remoter (0.3-2)
Maintainer: Drew Schmidt <wrathematics@gmail.com>  
Bug reports: https://github.com/RBigData/remoter/issues

0 errors | 0 warnings | 0 notes

## reutils (0.2.3)
Maintainer: Gerhard Schöfl <gerhard.schofl@gmail.com>  
Bug reports: https://github.com/gschofl/reutils/issues

0 errors | 0 warnings | 0 notes

## rfisheries (0.2)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: http://www.github.com/ropensci/rfisheries/issues/new

0 errors | 0 warnings | 0 notes

## rotl (3.0.3)
Maintainer: Francois Michonneau <francois.michonneau@gmail.com>  
Bug reports: https://github.com/ropensci/rotl/issues

0 errors | 0 warnings | 0 notes

## rpcdsearch (1.0)
Maintainer: David Springate <daspringate@gmail.com>

1 error  | 0 warnings | 0 notes

```
checking whether package ‘rpcdsearch’ can be installed ... ERROR
Installation failed.
See ‘/Users/hadley/Documents/devtools/assertthat/revdep/checks/rpcdsearch.Rcheck/00install.out’ for details.
```

## rprime (0.1.0)
Maintainer: Tristan Mahr <tristan.mahr@wisc.edu>  
Bug reports: http://github.com/tjmahr/rprime/issues

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
but_last: no visible global function definition for ‘head’
first: no visible global function definition for ‘head’
last: no visible global function definition for ‘tail’
preview_frames: no visible global function definition for ‘str’
print.EprimeFrame: no visible global function definition for ‘str’
print.FrameList: no visible global function definition for ‘str’
Undefined global functions or variables:
  head str tail
Consider adding
  importFrom("utils", "head", "str", "tail")
to your NAMESPACE file.
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

## semver (0.2.0)
Maintainer: John Harrison <johndharrison0@gmail.com>  
Bug reports: https://github.com/johndharrison/semver/issues

0 errors | 0 warnings | 0 notes

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

## solr (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/solr/issues

0 errors | 0 warnings | 0 notes

## spareserver (1.0.1)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/spareserver/issues

0 errors | 0 warnings | 0 notes

## sparklyr (0.5.3)
Maintainer: Javier Luraschi <javier@rstudio.com>  
Bug reports: https://github.com/rstudio/sparklyr/issues

0 errors | 0 warnings | 0 notes

## sss (0.1-0)
Maintainer: Andrie de Vries <apdevries@gmail.com>  
Bug reports: https://github.com/andrie/sss/issues

0 errors | 0 warnings | 0 notes

## stremr (0.4)
Maintainer: Oleg Sofrygin <oleg.sofrygin@gmail.com>  
Bug reports: https://github.com/osofr/stremr/issues

0 errors | 0 warnings | 0 notes

## textreuse (0.1.4)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/textreuse/issues

0 errors | 0 warnings | 0 notes

## tidyjson (0.2.1)
Maintainer: Jeremy Stanley <jeremy.stanley@gmail.com>

0 errors | 0 warnings | 1 note 

```
checking R code for possible problems ... NOTE
read_json: no visible global function definition for ‘tail’
Undefined global functions or variables:
  tail
Consider adding
  importFrom("utils", "tail")
to your NAMESPACE file.
```

## tmlenet (0.1.0)
Maintainer: Oleg Sofrygin <oleg.sofrygin@gmail.com>  
Bug reports: https://github.com/osofr/tmlenet/issues

0 errors | 0 warnings | 0 notes

## wdman (0.2.2)
Maintainer: John Harrison <johndharrison0@gmail.com>  
Bug reports: https://github.com/johndharrison/wdman/issues

0 errors | 0 warnings | 0 notes

## wordbankr (0.2.0)
Maintainer: Mika Braginsky <mika.br@gmail.com>  
Bug reports: http://github.com/langcog/wordbankr/issues

0 errors | 0 warnings | 0 notes

## ztype (0.1.0)
Maintainer: Vincent Guyader <vincent@thinkr.fr>

0 errors | 0 warnings | 0 notes

