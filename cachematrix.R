## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The function below, which creates a matrix, includes in itself setting the value of the matrix,
## getting the value of the matrix, setting the value of the inversion, and getting the value
## of the inversion. The function also caches the matrix inversion.
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The function below inverts the matrix, created with the function above.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m 
}
