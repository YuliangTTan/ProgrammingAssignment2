## Put comments here that give an overall description of what your
## functions do
##The functions makeCacheMatrix() and cacheSolve() are designed to work interactively for gaining the inverse matric of the matrix input in the makeCacheMatrix(). makeCacheMatrix() is designed to transfer the input matrix to a type that allows cacheSolve() to work out the inverse matrix and set the value of inverse matrix back to the makeCacheMatrix() so that this value can be stored and reused for checking if there is already a inverse matrix value cached for the same matrix input. The use of these two functions will avoid repeated calculation for gaining the inverse matrix from the same matrix. 

## Write a short comment describing this function
##makeCacheMatrix() is to firstly initialize the value of x and invsm, and allow the value of invsm worked out by cacheSolve() to be stored inside it and keep this state. 
makeCacheMatrix <- function(x = matrix()) {
          invsm<- NULL
          set<-function(y){
                  x<<- y
            invsm<<- NULL
          }
          get<- function ()x
          setSolveMatrix<- function(SolveMatrix) invsm<<-SloveMatrix
          getSolveMatrix<- function() invsm  
          list(set = set, get = get,
               setSolveMatrix = setSolveMatrix,
               getSolveMateix = getSolveMatrix)
          }


## Write a short comment describing this function
##cacheSolve() is to test if there is cached invsm value, work out the inverse matrix and set the value back to the inside of makeCacheMatrix() function. 
cacheSolve <- function(x, ...) {
         invsm<- x$getSolveMatrix()
         if(!is.null(invsm)){
                 message("getting cached data")
                 return(invsm)
         }
         data <- x$getSolveMatrix()
         invsm <- solve(data,...)
         x$setSolveMatrix(invsm)
         invsm
        ## Return a matrix that is the inverse of 'x'
}
