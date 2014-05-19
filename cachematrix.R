## The following two functions is used to create a special Matrix
## and cache the inverse of the Matrix

## This function create a special Matrix

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL
	}
	get <-function() x
	setinverse<-function(solve) m <<-solve
	getinverse<-function() m
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## The following function calculates the inverse of the special 
## Matrix created with the above function

cacheSolve <- function(x, ...) {
        m<-x$getinverse()
        if(!is.null(m)){
        	message("Loading Cached Matrix")
        	m
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}
