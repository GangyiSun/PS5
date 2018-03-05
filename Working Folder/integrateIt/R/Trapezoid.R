#' A Trapezoid object
#'
#' Object of class \code{Trapezoid} is created by the \code{integrateIt} function
#'
#' An object of the class `Trapezoid' has the following slots:
#' \itemize{
#' \item \code{x} a vector of x values
#' \item \code{y} a vector of y values
#' \item \code{area} area under curve defined by x and y, calculated using the trapezoid method
#' }
#'
#' @author Gangyi Sun: \email{gangyi.sun@@wustl.edu}
#' @aliases Trapezoid-class initialize,Trapezoid-method

# Creates class Trapezoid
#' @rdname Trapezoid
#' @export
setClass(Class="Trapezoid",
         representation = representation(
           x = "numeric",
           y = "numeric",
           area = "numeric"
         ),
         prototype = prototype(
           x = c(),
           y = c(),
           area = c()
         )
)

# Initialization method for class Trapezoid
#' @export
setMethod("initialize", "Trapezoid",
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
)

# Validation methods
setValidity("Trapezoid", function(object){
  # throws an error if size of vector x and vector y are not the same
  test1<-(length(x)==length(y))
  if(test1!=TRUE){return("Size of vector x and vector y are not the same.")}
  # throws an error if vector x contains repeated values
  test2<-any(duplicated(x))
  if(test2==TRUE){return("Vector x contains repeated values, which is not allowed.")}
}
)

# getArea method for class Trapezoid
#' @rdname Trapezoid
#' @export
setGeneric("getArea",
           function(object="Trapezoid")  {
             standardGeneric("getArea")
           }
)
#' @export
setMethod("getArea", "Trapezoid",
          function(object){
            return(object@area)
          }
)

# Print method for class Trapezoid
#' @rdname Trapezoid
#' @export
setMethod("print", "Trapezoid",
          function(x, ...){
            return(x@area)
          }
)
