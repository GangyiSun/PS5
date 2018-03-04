library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GitHub/PS5/Working Folder")

current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
check(current.code)

# Test Code
x<-c(1,2,3,4,5)
y<-c(2,3,2,3,2)
d<-c(2,4)
testTrapezoid<-integrateIt(x,y,d,'Trap')
testSpimpson<-integrateIt(x,y,d,'Simpson')
testTrapezoid
testSimpson
getArea(testTrapzoid)
## getArea(testSimpson)
