# Load the built-in Titanic dataset
data("Titanic")

# Convert contingency table to a data frame
titanic_df <- as.data.frame(Titanic)

# Survival vs passenger class
survival_table <- xtabs(
  Freq ~ Class + Survived,
  data = titanic_df
)

barplot(
  t(survival_table),
  beside = TRUE,
  col = c("tomato", "steelblue"),
  legend.text = rownames(t(survival_table)),
  main = "Titanic Survival by Class",
  xlab = "Passenger Class",
  ylab = "Number of Passengers"
)

# Survival by gender
gender_table <- xtabs(
  Freq ~ Sex + Survived,
  data = titanic_df
)

barplot(
  t(gender_table),
  beside = TRUE,
  col = c("tomato", "steelblue"),
  legend.text = rownames(t(gender_table)),
  main = "Titanic Survival by Gender",
  xlab = "Gender",
  ylab = "Number of Passengers"
)

# The built-in Titanic table does not contain individual ages.
# Create a sample age vector for the histogram.
ages <- c(5, 12, 18, 22, 25, 28, 32, 35, 40, 45, 50, 60, 65)

hist(
  ages,
  breaks = 6,
  main = "Histogram of Sample Passenger Ages",
  xlab = "Age",
  col = "lightblue"
)