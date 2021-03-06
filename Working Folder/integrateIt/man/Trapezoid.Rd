% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Trapezoid.R
\docType{class}
\name{Trapezoid-class}
\alias{Trapezoid-class}
\alias{initialize,Trapezoid-method}
\alias{getArea,Trapezoid-method}
\alias{print,Trapezoid-method}
\title{A Trapezoid object}
\usage{
\S4method{getArea}{Trapezoid}(object)

\S4method{print}{Trapezoid}(x, ...)
}
\description{
Object of class \code{Trapezoid} is created by the \code{integrateIt} function
}
\details{
An object of the class `Trapezoid' has the following slots:
\itemize{
\item \code{x} a vector of x values
\item \code{y} a vector of y values
\item \code{area} area under curve defined by x and y, calculated using the trapezoid method
}
}
\author{
Gangyi Sun: \email{gangyi.sun@wustl.edu}
}
