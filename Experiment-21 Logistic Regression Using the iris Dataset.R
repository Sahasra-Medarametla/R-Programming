# Install the package once if required
# install.packages("nnet")

library(nnet)

# Load dataset
data("iris")

# Set seed
set.seed(123)

# Randomly split dataset into 80% training and 20% testing
train_index <- sample(
  seq_len(nrow(iris)),
  size = floor(0.8 * nrow(iris))
)

train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Build multinomial logistic regression model
model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data = train_data,
  trace = FALSE
)

print("Model Summary:")
print(summary(model))

# Predict species
predictions <- predict(
  model,
  newdata = test_data
)

# Confusion matrix
confusion_matrix <- table(
  Actual = test_data$Species,
  Predicted = predictions
)

print("Confusion Matrix:")
print(confusion_matrix)

# Calculate accuracy
accuracy <- mean(predictions == test_data$Species)

cat("Accuracy:", round(accuracy * 100, 2), "%\n")