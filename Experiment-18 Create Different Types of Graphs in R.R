# Sample data
marks <- c(65, 70, 75, 80, 85, 90, 95, 75, 82, 88)

subjects <- c("Maths", "Science", "English", "Computer")
scores <- c(85, 90, 78, 95)

months <- 1:6
sales <- c(100, 120, 115, 140, 160, 180)

x <- c(1, 2, 3, 4, 5)
y <- c(10, 15, 13, 20, 25)

# Boxplot
boxplot(
  marks,
  main = "Boxplot of Marks",
  ylab = "Marks"
)

# Histogram
hist(
  marks,
  main = "Histogram of Marks",
  xlab = "Marks"
)

# Bar plot
barplot(
  scores,
  names.arg = subjects,
  main = "Subject-Wise Scores",
  xlab = "Subjects",
  ylab = "Scores"
)

# Line chart
plot(
  months,
  sales,
  type = "l",
  main = "Monthly Sales",
  xlab = "Month",
  ylab = "Sales"
)

# Scatterplot
plot(
  x,
  y,
  main = "Scatter Plot",
  xlab = "X Values",
  ylab = "Y Values",
  pch = 19
)