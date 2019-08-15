## Matrix inversion is usually a costly computation and there may be some benefit to caching the 
## inverse of a matrix rather than computing it repeatedly. A pair of functions that cache the inverse 
## of a matrix are being provided 

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  y <<- solve(x)
  y
}


## This function computes the inverse of the special "matrix"
cacheSolve <- function(x, ...) {
  r <- makeCacheMatrix(x)
  if(!is.null(r)) {
    message("return reverse from makeCacheMatrix")
    return(r)
  }
  solve(x)
}
