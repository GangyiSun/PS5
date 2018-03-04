#' Integrating
#'
#' Finds the area under a curve given 2 vectors 
#'
#' @param x A vector of numeric values. 
#' @param y A vector of numeric values, with same dimensionality as \code{x}.
#' @param domain A vector of size 2, indicating starting and ending values. 
#' @param rule Either "Trap" or "Simpson", indicating the integration method to be used. 
#'
#' @return the values of x, the values of y, and an object of class Trapezoid or Simpson containing:
#'  \item{x}{a vector of x values}
#'  \item{y}{a vector of y values}
#'  \item{area}{area under curve defined by x and y, calculated using the trapezoid method}
#' @author Gangyi Sun
#' @note This is a very simple function
#' @examples
#' 
#' myX <- c(3,4,5) 
#' myY <- c(1,2,3)
#' myDomain <- c(3,5)
#' integrateIt(myX, myY,myDomain,Trap)
#' @seealso \code{\link{print}}
#' @rdname integrateIt
#' @aliases integrateIt,ANY-method
#' 
#' @export
setGeneric(name="integrateIt",
           def=function(x, y, domain, rule, ...)
           {standardGeneric("integrateIt")}
)

#' @export
setMethod(f="integrateIt",
          definition=function(x, y, domain, rule, ...){
            if (rule=='Trap'){
              return(new("Trapezoid", x=x, y=y, area=2))
            }
            if (rule=='Simpson'){
              return(new("Simpson", x=x, y=y, area=2))
            }
          }
)


