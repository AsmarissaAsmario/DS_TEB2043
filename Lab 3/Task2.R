students <- list(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt",
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  ExamScore = c(59, 71, 83, 68, 65,
                57, 62, 92, 92, 59)
)

students

highest <- max(students$ExamScore)
lowest <- min(students$ExamScore)
average <- mean(students$ExamScore)

highest
lowest
average

