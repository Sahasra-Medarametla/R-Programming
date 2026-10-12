# Create the data frame
exam_data <- data.frame(
  name = c("Anu", "Bala", "Charan", "Divya", "Esha"),
  score = c(85, 72, 90, 65, 78),
  attempts = c(1, 2, 1, 3, 2),
  qualify = c(TRUE, TRUE, TRUE, FALSE, TRUE)
)

print("Original Data Frame:")
print(exam_data)

# Extract a row
print("First Row:")
print(exam_data[1, ])

# Extract a column
print("Student Names:")
print(exam_data$name)

# Add a new row
new_row <- data.frame(
  name = "Farhan",
  score = 88,
  attempts = 1,
  qualify = TRUE
)

exam_data <- rbind(exam_data, new_row)

# Add a new column
exam_data$grade <- ifelse(exam_data$score >= 80, "A", "B")

print("After Adding Row and Column:")
print(exam_data)

# Sort by score in descending order
exam_data <- exam_data[order(-exam_data$score), ]

print("Sorted Data Frame:")
print(exam_data)

# Save to CSV file
write.csv(exam_data, "exam_data.csv", row.names = FALSE)

cat("Data saved successfully to exam_data.csv\n")