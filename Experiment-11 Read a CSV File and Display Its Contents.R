# Create a sample CSV file
student_data <- data.frame(
  Name = c("Anu", "Bala", "Charan"),
  Marks = c(85, 90, 78),
  Department = c("CSE", "IT", "ECE")
)

write.csv(student_data, "students.csv", row.names = FALSE)

# Read the CSV file
data <- read.csv("students.csv")

# Display contents
print("CSV File Contents:")
print(data)