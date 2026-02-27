# Create data frame
students <- data.frame(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt"),
  Age = c(20, 21, 22, 21, 20),
  Course = c("DS", "DS", "DS", "DS", "DS"),
  Score = c(59, 71, 83, 68, 65)
)

# Display data frame
students

students$Grade <- ifelse(students$Score >= 50, "Pass", "Fail")

students

new_row <- data.frame(
  Name = "Larson",
  Age = 23,
  Course = "DS",
  Score = 57,
  Grade = "Pass"
)

students <- rbind(students, new_row)

students