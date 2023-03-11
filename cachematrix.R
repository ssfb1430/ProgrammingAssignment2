## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#uses matrix created by user that allows user to get the matrix, set the values,
#and apply inverse function on the matrix.
makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
#computes the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
         if(!is.null(i)){
           message("getting cached data")
           return(i)
         }
         data <- x$get()
         i <- solve(data, ...)
         x$setInverse(i)
         i
}
