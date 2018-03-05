#' A Simpson object
#' 
#' Object of class \code{Simpson} is created by the \code{integrateIt} function
#' 
#' An object of the class `Simpson' has the following slots:
#' \itemize{
#' \item \code{x} a vector of x values
#' \item \code{y} a vector of y values
#' \item \code{area} area under curve defined by x and y, calculated using the simpsons method 
#' }
#'
#' @author Gangyi Sun: \email{gangyi.sun@@wustl.edu}
#' @aliases Simpson-class initialize,Simpson-method 
#' 
#' @rdname Simpson
#' @export 
setClass(Class="Simpson", 
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
setMethod("initialize", "Simpson", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 

setValidity("Simpson", function(object){
  test1<-(length(x)==length(y))
  test2<-any(duplicated(x))
  if(test1!=TRUE){return("Size of vector x and vector y are not the same.")}
  if(test2==TRUE){return("Vector x contains repeated values, which is not allowed.")}
}
)

#' #' @rdname Simpson
#' #' @export
#' setGeneric("getArea",
#'            function(object="Simpson")  {
#'              standardGeneric("getArea")
#'            }
#' )
#' 
#' #' @export
#' setMethod("getArea", "Simpson",
#'           function(object){
#'             return(object@area)
#'           }
#' )

#' @rdname Simpson
#' @export
setMethod("print", "Simpson",
          function(x, ...){
            return(x@area)
          }
)
