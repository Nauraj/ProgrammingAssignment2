## This function proceeds time-consuming computations
## 

## I have taken a lot of help from the example of assignment2
## :)
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    set_mean_matrix <- function(MeanVal) m <<- MeanVal
    get_mean_matrix <- function() m
    list(set = set, get = get,
         set_mean_matrix = set_mean_matrix,
         get_mean_matrix = get_mean_matrix)
}
## This part calculates the mean of given matrix.

cacheSolve <- function(x = matrix(), ...) {
        ## Return a matrix that is the inverse of 'x'
}
    
cachemean <- function(x, ...) {
    m <- x$get_mean_matrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    solve <- x$get()
    m <- MeanVal(solve, ...)
    x$set_mean_matrix(m)
    m
}