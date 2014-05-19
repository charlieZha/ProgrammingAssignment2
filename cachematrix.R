## The following two functions is used to create a special Matrix
## and cache the inverse of the Matrix

## This function create a special Matrix

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL ＃＃initial the m ready for store the Matrix
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
        	##This function check if the Matrix is empty
        	message("Loading Cached Matrix")
        	return(m)
        }
        data<-x$get()
        m<-solve(data,...)
        x$setinverse(m)
        m
}
