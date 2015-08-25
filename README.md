---
title: "Rbutchland"
author: "Butch Landingin"
date: "Tuesday, 25 August, 2015"
output: html_document
---

Rbutchland: A suite of useful and (hopefully) reusable routines
=====================

This R package contains a suite of useful routines that I hope
to turn into a reusable package. Right now, it doesn't contain
much. My goal is to build a suite of useful routines 
for data exploration and manipulation.

Installation and Documentation
------------

The Rbutchland package is available on github and can be installed using
[devtools](https://github.com/hadley/devtools):

```
library(devtools)
install_github("butchland/Rbutchland")
```



Dataframe stats
-----------------

This package provides some simple methods for extracting information
about a dataframe

* `df_boxstat`: constructs a data frame that summarizes the dataframes's
size (nrows and ncols)


```r
df_boxstat(mtcars)
```

```
##   dimension value
## 1     nrows    32
## 2     ncols    11
```

