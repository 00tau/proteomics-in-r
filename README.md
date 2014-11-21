The R-package proteomics
========================

Introduction
------------

This is an R-package for the Statistical Analysis of High Throughput Proteomics
Data. The package provides methods for making inference in isobaric labelled
LC-MS/MS experiments, namely iTRAQ experiments. It provides a function that
reasonably parses a CSV-export from Proteome Discoverer(TM) into a data frame
that can be easily handled in R. Functions and methods are provided for quality
control, filtering, norming, and the calculation of response variables for
further analysis. The merging of multiple iTRAQ experiments with respect to a
reference is also covered.

Installation from CRAN
----------------------

The easiest way to install the package in a running R environment is:

```
install.packages("proteomics")
library("proteomics")
```

Installation using devtools GitHub-functionality
--------------------------------------------------

If you have `devtools` installed on your system, you can install the latest
up-to-date version of `proteomics` directly from within R.

```
install.packages("devtools")
devtools::install_github("proteomics")
library("proteomics")
```

Installation manually from GitHub
---------------------------------

After cloning the repository, you may use the following magic in the build
directory to build and install the package on your system:

```
make package
make install
```

Then open up an R-session and type:

```
library("proteomics")
```

And you are good to go.

Where to start
--------------

A small tutorial will soon be appearing here.
