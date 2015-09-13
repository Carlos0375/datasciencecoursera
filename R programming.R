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


# Practice functions to create vectors and data.frames
############################################################################################

# Fill one vector with values
# The function f_vector needs one argument (n) and creates a vector (vector01) with numbers from 1 to n
# Example: n = 5 -> vector01: 1 2 3 4 5

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
# The function f_vector_two needs two arguments (n and m) and creates two vectors (vector01 and vector02). 
# The first vector (vector01) contains the numbers 1 to n, the second vector (vector02) contains the numbers 1 to n each multiplied with m
# Example: f_vector_two(4,2):
# vector01: 1 2 3 4
# vector02: 2 4 6 8

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
# The function f_vector_df creates a data.frame out of two vectors and requires two arguments (n and m).
# This is primarly as the function above just with the difference that the result is written in a data.frame
# Example: f_vector_df(5,2)
#   vector01 vector02
# 1        1        4
# 2        2        8
# 3        3       12
# 4        4       16
# 5        5       20

f_vector_df <- function(n,m){
  # error-handling
  if(mode(n) != "numeric")
    stop("need numeric data")
  else
    # create an empty vector 1 und 2
    vector01 <- NULL
    vector02 <- NULL
  # for-construction
  for(i in 1:n){
    # a values 1 to i to the vector
    vector01 <- append(vector01, i)
    vector02 <- append(vector02, i*m)
  }
  # vector01 <- unlist(vector01)
  # vector02 <- unlist(vector02)
  mydf01 <- data.frame(vector01,vector02)
  # print vecotr01 and vector02
  return(mydf01)
} 

f_vector_df(5,4)


# create a data.frame with rbind
# The function f_df_rbind does the same as function f_vector_df just with the help of the function rbind
# Example: f_df_rbind(5,2)
#   i  i...m
# 1 1      2
# 2 2      4
# 3 3      6
# 4 4      8
# 5 5     10

f_df_rbind <- function(n,m){
  # error-handling
  if(mode(n) != "numeric")
    stop("need numeric data")
  else
    # create an empty data.frame
    mydf01 <- NULL
  # for-construction
  for(i in 1:n){
    # a values 1 to i to the vector
    mydf01 <- rbind(mydf01, data.frame(i, i*m))
  }
  # print vecotr01 and vector02
  return(mydf01)
} 

f_df_rbind(5,2)

# create a data.frame with a preset data.frame
# The function f_df_preset also creates a data.frame with two columns (C1 and C2). The data.frame is first initialized and then filled
# row by row ([i,]) within the for-loop
# Example: f_df_preset(5,2)
#   C1 C2
# 1  1  2
# 2  2  4
# 3  3  6
# 4  4  8
# 5  5 10

f_df_preset <- function(n,m){
  # error-handling
  if(mode(n) != "numeric")
     stop("need numeric data")
  else
    # create an empty data.frame
    mydf01 <- data.frame(C1=rep(0, n), C2=rep(0, n))
  for(i in 1:n){
    mydf01[i, ] = c(i, i*m)
  }
  return(mydf01)
}

f_df_preset(5,2)
