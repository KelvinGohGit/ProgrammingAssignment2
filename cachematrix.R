<<<<<<< HEAD
#Caching the inverse matrix
# makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
# assume that the matrix supplied is always invertible.

=======
>>>>>>> 6320b51510eb27f69507029037c9f95487c8e1cd
makeCacheMatrix <- function(x = matrix()) {
  InvM <- NULL
  set <- function(y) {
    x <<- y
    InvM <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) InvM <<- inverse
<<<<<<< HEAD
  getInverse <- function() InvM
=======
  getInverse <- function() Invm
>>>>>>> 6320b51510eb27f69507029037c9f95487c8e1cd
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
<<<<<<< HEAD
# cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
#If the inverse has already been calculated (and the matrix has not changed),
# then the cachesolve should retrieve the inverse from the cache.
=======
>>>>>>> 6320b51510eb27f69507029037c9f95487c8e1cd

cacheSolve <- function(x, ...) {
  InvM <- x$getInverse()
  if(!is.null(InvM)) {
    message("getting cached data")
    return(InvM)
  }
  Mdata <- x$get()
<<<<<<< HEAD
  InvM <- solve(Mdata, ...)
=======
  InvM <- Solve(Mdata, ...)
>>>>>>> 6320b51510eb27f69507029037c9f95487c8e1cd
  x$setInverse(InvM)
  InvM
}