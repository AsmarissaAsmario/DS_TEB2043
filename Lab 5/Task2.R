# Input integer
n <- as.integer(readline("Input an integer: "))

# Loop to display cube
for (i in 1:n) {
  cube <- i^3
  cat("Number is:", i, "and cube of the", i, "is :", cube, "\n")
}