# Create two matrices
arr1 <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)

arr2 <- matrix(7:12, nrow = 2, ncol = 3, byrow = TRUE)

print("First Array:")
print(arr1)

print("Second Array:")
print(arr2)

# Combine row-wise
combined_array <- rbind(arr1, arr2)

print("Combined Array:")
print(combined_array)