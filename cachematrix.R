## Put comments here that give an overall description of what your
## functions do
##The two functions I've written below create a speical object (matrix) and calcuate the matrix inverse
## Write a short comment describing this function
#The first function creates the matrix object
makeCacheMatrix <- function(x = matrix()) {
        set <- function (y) {
                x<<- y 
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function
## This function is computing the inverse of makeCacheMatrix function unless the inverse was calculated earlier the function will return the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)){
                message("getting cached  data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

