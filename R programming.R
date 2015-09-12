# Programming in R - Thoughts and Examples

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


