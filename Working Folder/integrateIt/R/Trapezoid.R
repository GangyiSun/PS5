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
#' @author Gangyi Sun: \email{gangyi.sun@wustl.edu}
#' @aliases Trapezoid-class initialize,Trapezoid-method 
#' 
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

#' @export
setMethod("initialize", "Trapezoid", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 

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