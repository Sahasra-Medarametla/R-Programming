# Load dataset
data("ChickWeight")

# Convert Diet to factor
ChickWeight$Diet <- factor(ChickWeight$Diet)

# Build multiple regression model
model <- lm(
  weight ~ Time + Diet,
  data = ChickWeight
)

print("Regression Model Summary:")
print(summary(model))

# Predict weight for all observations
predicted_weight <- predict(model, newdata = ChickWeight)

# Calculate mean squared error
actual_weight <- ChickWeight$weight

mse <- mean((actual_weight - predicted_weight)^2)

cat("Mean Squared Error:", mse, "\n")

# Predict weight for a new observation
new_chick <- data.frame(
  Time = 20,
  Diet = factor("2", levels = levels(ChickWeight$Diet))
)

new_prediction <- predict(model, newdata = new_chick)

cat("Predicted Weight:", new_prediction, "\n")