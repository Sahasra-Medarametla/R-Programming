n <- as.integer(readline("Enter a positive integer: "))

if (is.na(n) || n <= 0) {
  cat("Please enter a positive integer.\n")
} else {
  cat("Factors of", n, "are:\n")
  
  for (i in 1:n) {
    if (n %% i == 0) {
      cat(i, " ")
    }
  }
  
  cat("\n")
}