# Install the package once if required
# install.packages("reshape2")

library(reshape2)

# Load built-in dataset
data("airquality")

print("First Six Rows:")
print(head(airquality))

# Melt the dataset
melted_data <- melt(
  airquality,
  id.vars = c("Month", "Day"),
  measure.vars = c("Ozone", "Solar.R", "Wind", "Temp"),
  variable.name = "Measurement",
  value.name = "Value"
)

print("Melted Data:")
print(head(melted_data))

# Cast the data to calculate monthly averages
monthly_avg <- dcast(
  melted_data,
  Month ~ Measurement,
  fun.aggregate = function(x) mean(x, na.rm = TRUE)
)

print("Monthly Averages:")
print(monthly_avg)