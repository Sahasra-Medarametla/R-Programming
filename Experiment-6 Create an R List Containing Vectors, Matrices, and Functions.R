# Create a vector
v <- c(10, 20, 30, 40)

# Create a matrix
m <- matrix(1:6, nrow = 2, ncol = 3)

# Create a function
square <- function(x) {
  return(x * x)
}

# Create a list
my_list <- list(
  Numbers = v,
  Matrix = m,
  SquareFunction = square
)

# Display list contents
print("Complete List:")
print(my_list)

print("Vector:")
print(my_list$Numbers)

print("Matrix:")
print(my_list$Matrix)

print("Square of 5:")
print(my_list$SquareFunction(5))