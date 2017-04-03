## These pair of function can cache and figure out the inverse


## This function can store the matrix
makeCacheMatrix <- function(x = matrix()) {
  i=NULL
  set=function(y){
    x<<-y
    i=NULL
  }
  get=function() x
  setinv=function(inv) i<<-inv
  getinv=function() i
  list(set=set,get=get,
       setinv=setinv,
       getinv=getinv)
}


## This function can find out inverse for matrix

cacheSolve <- function(x, ...) {
  i=x$getinv
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data=x$get()
  i=solve(data)
  x$setinv(i)
  i
  
}












