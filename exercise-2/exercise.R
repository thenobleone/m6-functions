# Exercise 2: writing and executing functions (II)

# Created 3 different length vectors in order to test accuracy of control statements.
v1 <- c(1, 2, 3)
v2 <- c(1, 2)
v3 <- c(1, 2, 3, 4, 5, 6)
  
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

# Side stepped the issue about determining with vector is longer by using the built-in abs function 
CompareLength <- function (a, b){
  return (paste("The difference in lenghts is", abs(length(a) - length(b))))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(v1, v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "
# "Your second vector is longer by N elements"

#Extra step but created function to ensure proper use of plural for sentence return.
Check.Plural <- function (diff){
  if (diff == 1){
    return ("element.")
  } else{
    return ("elements.")
  }
}

# Added an if-else to let the user known which vector was longer.
DescribeDifference <- function (a, b){
  diff <- abs(length(a) - length(b))
  
  grammar <- Check.Plural(diff)
              
  if (length(a) > length(b)){
    return (paste("Your first vector is longer by", diff, grammar))
  } else {
    return (paste("Your second vector is longer by", diff, grammar))
  }
}

# Pass two vectors to your `DescribeDifference` function
# created two runs to test/show that the functions if-else condition is working
paste(DescribeDifference(v1, v2))
paste(DescribeDifference(v1, v3))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer

# Changed if-else control to set the vector to it's variable name, elimiting the need for multiple returns.
DescribeDifference <- function (a, b){
  diff <- abs(length(a)-length(b))
  
  grammar <- Check.Plural(diff)
  
  # Control used to assign the variable name for output
  if (length(a) > length(b)){
    name <- deparse(substitute(a))
  } else {
    name <- deparse(substitute(b))
  }
  
  return (paste("Vector", name ,"is longer by", diff, grammar))
}

paste(DescribeDifference(v1, v2))
paste(DescribeDifference(v1, v3))
