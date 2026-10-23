# Load dataset
data("iris")

# Display dimensions
print("Dimensions:")
print(dim(iris))

# Display summary
print("Summary:")
print(summary(iris))

# Standard deviation
print("Standard Deviation:")
print(sapply(iris[1:4], sd))

# Quantiles
print("Quantiles:")
print(sapply(iris[1:4], quantile))

# Mean measurements grouped by Species
species_mean <- aggregate(
  . ~ Species,
  data = iris,
  FUN = mean
)

print("Mean Measurements by Species:")
print(species_mean)

# Pivot table: average Sepal.Length by Species
pivot_table <- aggregate(
  Sepal.Length ~ Species,
  data = iris,
  FUN = mean
)

print("Pivot Table:")
print(pivot_table)

# Categorize Sepal.Length
iris$Sepal_Category <- cut(
  iris$Sepal.Length,
  breaks = c(-Inf, 5, 6, Inf),
  labels = c("Short", "Medium", "Long")
)

print("Categorical Grouping:")
print(table(iris$Species, iris$Sepal_Category))