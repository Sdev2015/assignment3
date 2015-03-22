## Put comments here that give an overall description of what your
## functions do
##Invrese a matrix. Thhis program will calculate the inverse.

## Write a short comment describing this function

> makeCacheMatrix <- function(x = matrix()) {
+     m<-NULL
+     set<-function(y){
+         x<<-y
+         m<<-NULL
+     }
+     get<-function() x
+     setmatrix<-function(solve) m<<- solve
+     getmatrix<-function() m
+     list(set=set, get=get,
+          setmatrix=setmatrix,
+          getmatrix=getmatrix)
+ }
> 


## Write a short comment describing this function
##Determining the caching or no cached matrix

> cacheSolve <- function(x=matrix(), ...) {
+     m<-x$getmatrix()
+     if(!is.null(m)){
+         message("You are getting cached data")
+         return(m)
+     }
+     matrix<-x$get()
+     m<-solve(matrix, ...)
+     x$setmatrix(m)
+     m
+ }
