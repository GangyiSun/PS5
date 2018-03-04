library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GitHub/PS5/Working Folder")

current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
check(current.code)
