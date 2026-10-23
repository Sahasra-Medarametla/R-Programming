# Load dataset
data("USArrests")

print("Summary Statistics:")
print(summary(USArrests))

# State with the largest Rape value
max_rape_state <- rownames(USArrests)[which.max(USArrests$Rape)]

cat("State with Largest Rape Value:", max_rape_state, "\n")

# Maximum and minimum Murder rates
cat("Maximum Murder Rate:", max(USArrests$Murder), "\n")
cat("Minimum Murder Rate:", min(USArrests$Murder), "\n")

cat(
  "State with Maximum Murder Rate:",
  rownames(USArrests)[which.max(USArrests$Murder)],
  "\n"
)

cat(
  "State with Minimum Murder Rate:",
  rownames(USArrests)[which.min(USArrests$Murder)],
  "\n"
)

# Correlation matrix
print("Correlation Matrix:")
print(cor(USArrests))

# States above median Assault
median_assault <- median(USArrests$Assault)

above_median <- USArrests[
  USArrests$Assault > median_assault,
]

print("States Above Median Assault:")
print(above_median)

# States in the bottom 25% for Murder
q25 <- quantile(USArrests$Murder, 0.25)

bottom_murder <- USArrests[
  USArrests$Murder <= q25,
]

print("States in Bottom 25% for Murder:")
print(bottom_murder)

# Histogram
hist(
  USArrests$Murder,
  main = "Histogram of Murder Arrest Rates",
  xlab = "Murder Arrest Rate"
)

# Density plot
plot(
  density(USArrests$Murder),
  main = "Density Plot of Murder Arrest Rates",
  xlab = "Murder Arrest Rate"
)

# Scatterplot
plot(
  USArrests$Murder,
  USArrests$Assault,
  main = "Murder vs Assault",
  xlab = "Murder",
  ylab = "Assault",
  pch = 19
)

# Bar graph of the first 10 states
barplot(
  USArrests$Murder[1:10],
  names.arg = rownames(USArrests)[1:10],
  main = "Murder Arrest Rates: First 10 States",
  xlab = "State",
  ylab = "Murder Rate",
  las = 2
)