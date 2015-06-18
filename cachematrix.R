## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## git test 
## can I make change?

## this function will creat a list of vector containing functions that will
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of matrix
## 4. get the value of the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
      ## reset the inverse
      ivs <- NULL
      ## function to set the value of the matrix
      setmatrix <- function (y){
            x <<- y
            ivs <<- NULL
      }
      ## function to get the value of the matrix
      getmatrix <- function(){
            x
      }
      ## function to set the value of the inverse 
      setinverse <- function(mtrx){
            ivs <<- mtrx
      }
      ## function to get the value of the matrix
      getinverse <- function(){
            ivs
      }
      ## make list containing functions
      list( setmatrix = setmatrix, 
            getmatrix = getmatrix, 
            setinverse = setinverse, 
            getinverse = getinverse)
      
}


## Write a short comment describing this function
##       this function will check if inverse of the matrix 
##       is already calculated.
##       If so, it will retrieve the data from the cache
##       If not, it will calculate the inverse of the matrix
##       return and cache the data
cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      ## Return a matrix that is the inverse of 'x'
      ## get the inverse matrix from the cach
      ivs <- x$getinverse()
      ## check if inverse has already been calculated
      if(!is.null(ivs)){
            message("retrieving cached data")
            return(ivs)
      }
      ## if not calculated get the matrix first
      data <- x$getmatrix()
      ## calculate the inverse of the matrix
      ivs <- solve(data)
      ## set the inverse of matrix to the cache
      x$setinverse(ivs)
      ##return the inverse
      ivs
      
}
