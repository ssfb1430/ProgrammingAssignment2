## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#uses matrix created by user that allows user to get the matrix, set the values,
#and apply inverse function on the matrix.
makeCacheMatrix <- function(x = matrix()) {
    #sets the matrix value
      i <- NULL
      set <- function(y){
        x <<- y
        i <<- NULL
      }
      #gets the matrix value
      get <- function() x
      #sets the inverse of the matrix
      setInverse <- function(inverse) i <<- inverse
      #gets the inverse of the matrix 
      getInverse <- function() i
      #defines the matrix values (set, get, setInverse, getInverse) as list
      list(set = set, get = get,
           setInverse = setInverse
           getInverse = getInverse)
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
