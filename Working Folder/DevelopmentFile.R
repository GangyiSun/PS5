library(devtools)
library(roxygen2)
library(testthat)

setwd("~/Documents/GitHub/PS5/Working Folder")

current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
check(current.code)
# checking DESCRIPTION meta-information ... ERROR
# is this a problem?

# Test Code
x<-c(1,2,3,4,5,6,7,8,9)
y<-c(2,3,2,3,2,3,2,3,2)
d<-c(2,8)
testTrapezoid<-integrateIt(x,y,d,'Trap')
testSimpson<-integrateIt(x,y,d,'Simpson')
testTrapezoid
testSimpson
print(testTrapezoid)
print(testSimpson)
getArea(testTrapezoid)
## getArea(testSimpson)

# Purposeful mistakes to test error messages
x<-c(1,2,3,4,5,6,7,8)
y<-c(2,3,2,3,2,3,2,3,2)
d<-c(2,8)
testTrapezoidError<-integrateIt(x,y,d,'Trap')

x<-c(1,2,6,6,6,6,6,8,9)
y<-c(2,3,2,3,2,3,2,3,2)
d<-c(2,8)
testSimpsonError<-integrateIt(x,y,d,'Simpson')

