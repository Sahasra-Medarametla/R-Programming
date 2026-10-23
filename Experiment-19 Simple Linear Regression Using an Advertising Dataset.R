# Create sample advertising data
advertising <- data.frame(
  Spend = c(10, 20, 30, 40, 50, 60, 70, 80),
  Sales = c(15, 25, 35, 42, 52, 61, 72, 80)
)

print("Advertising Dataset:")
print(advertising)

# Build linear regression model
model <- lm(Sales ~ Spend, data = advertising)

print("Regression Model Summary:")
print(summary(model))

# Predict sales for new advertising spend
new_data <- data.frame(Spend = 45)

prediction <- predict(model, newdata = new_data)

cat("Predicted Sales for Spend = 45:", prediction, "\n")