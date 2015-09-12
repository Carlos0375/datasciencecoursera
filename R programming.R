# Programming in R - Thoughts and Examples
# This are just small scripts for creating simple functions. This way I try to learn R. The functions my not be
# perfect but they should work. With every new function I create I try to implement something new and more elegant...


# Used or practical packages...
############################################################################################
# devtools
install.packages("devtools")
library("devtools", lib.loc="/Library/Frameworks/R.framework/Versions/3.1/Resources/library")

# slidify
install_github("slidify","ramnathv")


# Practice functions
############################################################################################

# Fill one vector with values

f_vector <- function(n){
  # error-handling
  if(mode(n) != "numeric")
    stop("need numeric data")
  else
    # create an empty vector
    vector01 <- vector("list",n)
    # for-construction
    for(i in 1:n){
      # a values 1 to i to the vector
      vector01[i] <- i
    }
  vector01 <- unlist(vector01)
  # print vecotr01
  return(vector01)
}   

f_vector(10)

# create two vectors

f_vector_two <- function(n,m){
  # error-handling
  if(mode(n) != "numeric")
    stop("need numeric data")
  else
    # create an empty vector 1 und 2
    vector01 <- vector("list",n)
    vector02 <- vector("list",n)
  # for-construction
  for(i in 1:n){
    # a values 1 to i to the vector
    vector01[i] <- i
    vector02[i] <- i*m
  }
  vector01 <- unlist(vector01)
  vector02 <- unlist(vector02)
  # print vecotr01 and vector02
  return(list(v1=vector01,v2=vector02))
} 

f_vector_two(50,3.75)

# create a data.frame out of two vectors

f_vector_df <- function(n,m){
  # error-handling
  if(mode(n) != "numeric")
    stop("need numeric data")
  else
    # create an empty vector 1 und 2
    vector01 <- vector("list",n)
  vector02 <- vector("list",n)
  # for-construction
  for(i in 1:n){
    # a values 1 to i to the vector
    vector01[i] <- i
    vector02[i] <- i*m
  }
  # vector01 <- unlist(vector01)
  # vector02 <- unlist(vector02)
  mydf01 <- as.data.frame(rbind(c(vector01,vector02)))
  # print vecotr01 and vector02
  return(mydf01)
} 

f_vector_df(10,2)
