makeCacheMatrix <- function(x = matrix()) {
  InvM <- NULL
  set <- function(y) {
    x <<- y
    InvM <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) InvM <<- inverse
  getInverse <- function() Invm
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

cacheSolve <- function(x, ...) {
  InvM <- x$getInverse()
  if(!is.null(InvM)) {
    message("getting cached data")
    return(InvM)
  }
  Mdata <- x$get()
  InvM <- Solve(Mdata, ...)
  x$setInverse(InvM)
  InvM
}