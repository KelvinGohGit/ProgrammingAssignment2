#Caching the inverse matrix
# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# assume that the matrix supplied is always invertible.

makeCacheMatrix <- function(x = matrix()) {
  InvM <- NULL
  set <- function(y) {
    x <<- y
    InvM <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) InvM <<- inverse
  getInverse <- function() InvM
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed),
# then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  InvM <- x$getInverse()
  if(!is.null(InvM)) {
    message("getting cached data")
    return(InvM)
  }
  Mdata <- x$get()
  InvM <- solve(Mdata, ...)
  x$setInverse(InvM)
  InvM
}