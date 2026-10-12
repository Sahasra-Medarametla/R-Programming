# Install the package once if required
# install.packages("reshape2")

library(reshape2)

# Load dataset
data("ChickWeight")

print("First Six Rows:")
print(head(ChickWeight))

print("Dataset Structure:")
str(ChickWeight)

# Sort by weight
sorted_data <- ChickWeight[order(ChickWeight$weight), ]

print("First Six Rows Sorted by Weight:")
print(head(sorted_data))

# Melt the dataset
melted_data <- melt(
  ChickWeight,
  id.vars = c("Chick", "Diet", "Time"),
  measure.vars = "weight",
  variable.name = "Measurement",
  value.name = "Weight"
)

print("Melted Data:")
print(head(melted_data))

# Calculate average weight by Time and Diet
diet_summary <- dcast(
  melted_data,
  Time ~ Diet,
  value.var = "Weight",
  fun.aggregate = mean
)

print("Average Weight by Time and Diet:")
print(diet_summary)