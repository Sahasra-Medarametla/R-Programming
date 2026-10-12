set.seed(10)

# Generate 100 random numbers
numbers <- rnorm(100, mean = 50, sd = 10)

# Round numbers to integers
rounded_numbers <- round(numbers)

# Count occurrences
frequency <- table(rounded_numbers)

print("First 20 Generated Values:")
print(head(numbers, 20))

print("Frequency of Rounded Values:")
print(frequency)