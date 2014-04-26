## function to set and get a cached matrix and compute inverse

## cache the inverse

makeCacheMatrix <- function(x = matrix()) {

        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(solve) inv <<- solve
        getinv <- function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)

}


## compute the inverse

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
         mat <- x$get()
        inv <- solve(mat)
        x$setin(inv)
        inv
}
