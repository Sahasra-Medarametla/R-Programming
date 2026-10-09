# Create a vector
values <- 1:12

# Create an array with dimension names
arr <- array(
  values,
  dim = c(2, 3, 2),
  dimnames = list(
    Rows = c("R1", "R2"),
    Columns = c("C1", "C2", "C3"),
    Tables = c("T1", "T2")
  )
)

print("Array:")
print(arr)

# Access specific elements
print("Element at R1, C2, T1:")
print(arr["R1", "C2", "T1"])

print("Element at R2, C3, T2:")
print(arr["R2", "C3", "T2"])