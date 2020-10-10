## Put comments here that give an overall description of what your

#This function will be able to cache potentially time-consuming computations. For example, taking the mean of a numeric vector is typically a fast operation. However, for a very long vector, it may take too long to compute the mean, especially if it has to be computed repeated in a loop).


## Write a short comment describing this function
#This function will create cach matrix.


MakeCachMatrix<-function(x=matrix){
        inv <- NULL
        set<-function(y){
                x<<- y 
                inv <<- NULL
                
        }
        get<- function() {x}
        setInverse <- function(inverse){inv<<- inverse}
        getInverse <- function(){inv}
        list(set = set, get = get, setInverse = setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

#This will get the invese of cach matrix.

cachSolve <- function(x,...){
        inv<-x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
                
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
}
