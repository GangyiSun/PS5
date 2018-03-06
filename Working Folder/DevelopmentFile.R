## Applied Statistical Programing 
## Homework 6 - Problem Set 5
## Gangyi Sun (441748)

## Load libraries
library(devtools)
library(roxygen2)
library(testthat)

## Set working directory
setwd("~/Documents/GitHub/PS5/Working Folder")


## Creates package skeleton
# Only run this the first time to create the skeleton 
# devtools::create("integrateIt")

## Add the necessary R scripts to the R folder, and edit the DESCRIPTION file. 

## Updates the package based on R scripts written, man and NAMESPACE automatically updates. 
current.code <- as.package("integrateIt")
load_all(current.code)
document(current.code)
check(current.code)

## An example to make sure that the integrateIt method works for both Trapezoid and Simspon methods of calculation
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
getArea(testSimpson)

## Intentional mistakes to test error messages
# sizes of vetor x and vector y are not the same 
x<-c(1,2,3,4,5,6,7,8)
y<-c(2,3,2,3,2,3,2,3,2)
d<-c(2,8)
testTrapezoidError<-integrateIt(x,y,d,'Trap')

# vector x contains repeated elements
x<-c(1,2,6,6,6,6,6,8,9)
y<-c(2,3,2,3,2,3,2,3,2)
d<-c(2,8)
testSimpsonError<-integrateIt(x,y,d,'Simpson')

