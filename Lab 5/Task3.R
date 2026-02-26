cat("Check whether an n digits number is Armstrong or not:\n")
cat("-----------------------------------------------------------\n")

num <- as.integer(readline("Input an integer: "))
original_num <- num

# Count digits
n <- nchar(as.character(num))

sum <- 0

# While loop to calculate Armstrong sum
while (num > 0) {
  digit <- num %% 10
  sum <- sum + digit^n
  num <- num %/% 10
}

# Check condition
if (sum == original_num) {
  cat(original_num, "is an Armstrong number.\n")
} else {
  cat(original_num, "is not an Armstrong number.\n")
}