# Exercise 1: writing and executing functions

# Write a function `AddThree` that adds 3 to an input value
AddThree <- function (x){
  return (3 + x)
}

# Create a variable `ten` by passing 7 to your `AddThree` function
ten <- AddThree(7)

# Write a function `FeetToMeters` that converts from feet to meters
FeetToMeters <- function (ft) {
  return (ft / 3.281)
}

# Create a variable `height.in.feet` that is your height in feet
height.in.feet <- 6

# Create a variable `height.in.meters` by passing `height.in.feet` to your `FeetToMeters` function
height.in.meters <- FeetToMeters(height.in.feet)

# Write a function to add two numbers together
AddNum <- function (num1, num2){
  return (num1 + num2)
}
  