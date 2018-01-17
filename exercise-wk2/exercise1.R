## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# This doesn't work because there's not multiple elements inside 

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# Didn't load the package with library("stringr")

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# initial is not a variable, initials is the variable above


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

vector <- c("Hi", "Hello")
typeof(vector)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector1, vector2) {
  vector.diff <- length(vector1) - length(vector2)
  return(vector.diff)
}

# Pass two vectors of different length to your `CompareLength` function
vector.2 <- c("Hi", "Hello", "Wassup")
CompareLength(vector, vector.2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vector1, vector2) {
  vector.diff <- length(vector1) - length(vector2)
  if ((length(vector1) - length(vector2)) > 0 ) {
    vec1.is.bigger <- paste("Your first vector is longer by", vector.diff, "elements")
    return(vec1.is.bigger)
  } else {
    vec2.is.bigger <- paste("Your second vector is longer by", -vector.diff, "elements")
    return(vec2.is.bigger)
  }
}
# Pass two vectors to your `DescribeDifference` function

DescribeDifference(vector, vector.2)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

# Send 3 vectors to your function to test it.

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


