## Put comments here that give an overall description of what your
## functions do

## this function is where a special matrix is created. 
## Object 'x' must be entered by a user.
## Then it creates 4 functions known as the "getters and setter".

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(i) {
    x <<- i
    s <<- NULL
    
    
    
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
  

}


## This function either calculates the inverse if the chache inverse has been set to null
## Or retrieves the cached inverse



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)){
    message("cached data coming soon")
    return(s)
    
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}
