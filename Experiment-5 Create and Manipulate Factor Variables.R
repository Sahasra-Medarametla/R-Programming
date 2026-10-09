# Create a vector of heights
heights <- c(150, 160, 155, 170, 165, 160, 155)

# Convert heights into a factor
height_factor <- factor(heights)

print("Height Factor:")
print(height_factor)

print("Height Factor Levels:")
print(levels(height_factor))

# Set seed for reproducibility
set.seed(10)

# Generate a random sample of letters
letters_sample <- sample(LETTERS, 10)

print("Random Letters:")
print(letters_sample)

# Convert letters into a factor
letter_factor <- factor(letters_sample)

print("Letter Factor:")
print(letter_factor)

print("Letter Factor Levels:")
print(levels(letter_factor))