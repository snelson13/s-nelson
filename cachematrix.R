## This pair of functions can cache the inverse of a matrix. 
##By setting and getting the value of the matrix, as well 
##as setting and getting the value of the inverse in the 
##makeCacheMatrix function, cacheSolve is able to compute
##the inverse using the resulting special "matrix" from 
##makeCacheMatrix.

## makeCacheMatrix: Here I set the value of the matrix, 
##initially leaving the inverse value as null, and getting 
##the matrix. This function also sets and gets the inverse
##of the matrix.The result will be a special "matrix" that
##can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function()x
	setInverse <- funtion(inverse) inv <<- inverse
	getInverse <- function() inv
	list (set = set,
		get = get,
		setInverse = setInverse,
		getInverse = getInverse)
}

## cacheSolve: Using the special "matrix" returned by 
##makeCacheMatrix, this function solves for the inverse.

cacheSolve <- function(x, ...) {
	inv <- x$getInverse()
	if (!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- solve(data, ...)
	x$setInverse(inv)
	inv
}