# Create a 5x4 matrix filled by rows
m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)

rownames(m1) <- c("R1", "R2", "R3", "R4", "R5")
colnames(m1) <- c("C1", "C2", "C3", "C4")

print("5x4 Matrix:")
print(m1)

# Create a 3x3 matrix filled by columns
m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE)

rownames(m2) <- c("A", "B", "C")
colnames(m2) <- c("X", "Y", "Z")

print("3x3 Matrix:")
print(m2)

# Create a 2x2 matrix
m3 <- matrix(1:4, nrow = 2, ncol = 2, byrow = TRUE)

rownames(m3) <- c("First", "Second")
colnames(m3) <- c("Left", "Right")

print("2x2 Matrix:")
print(m3)