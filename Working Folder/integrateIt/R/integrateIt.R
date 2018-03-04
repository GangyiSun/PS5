#' Integrating
#'
#' Finds the area under a curve given 2 vectors 
#'
#' @param x A vector of numeric values. 
#' @param y A vector of numeric values, with same dimensionality as \code{x}.
#' @param domain A vector of size 2, indicating starting and ending values. 
#' @param rule Either "Trap" or "Simpson", indicating the integration method to be used. 
#'
#' @return An object of class Trapezoid or Simpson containing:
#'  \item{x}{a vector of x values}
#'  \item{y}{a vector of y values}
#'  \item{area}{area under curve defined by x and y, calculated using the indicated method}
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
            xStart<-FALSE
            j=0
            while (xStart==FALSE){
              j=j+1
              if (x[j]==domain[1]){
                xStart<-TRUE
              }
            }
            
            xEnd<-FALSE
            k=0
            while (xEnd==FALSE){
              k=k+1
              if (x[k]==domain[2]){
                xEnd<-TRUE
              }
            }
            
            xCalc<-c()
            yCalc<-c()
            for (i in j:k){
              xCalc=c(xCalc, x[i])
              yCalc=c(yCalc, y[i])
            }
            n<-length(xCalc)
            h<-(domain[2]-domain[1])/n
            
            if (rule=='Trap'){
              sum=0
              for (i in 1:n){
                if (i==1|i==n) {
                  sum<-sum+yCalc[i]
                } 
                else {
                  sum<-sum+2*yCalc[i]
                }
              }
              t<-(h/2)*sum
              return(new("Trapezoid", x=x, y=y, area=t))
            }
            
            if (rule=='Simpson'){
              sum=0
              for (i in 1:n){
                if (i==1|i==n){
                  sum<-sum+yCalc[i]
                } 
                else {
                  if (i%%2==0){
                    sum<-sum+4*yCalc[i]
                  }
                  if (i%%2==1){
                    sum<-sum+2*yCalc[i]
                  }
                }
              }
              s<-(h/3)*sum
              return(new("Simpson", x=x, y=y, area=s))
            }
          }
)


