students$Chemistry <- c(59, 71, 83, 68, 65,
                        57, 62, 92, 92, 59)

students$Physics <- c(89, 86, 65, 52, 60,
                      67, 40, 77, 90, 61)

students

fail_chemistry <- sum(students$Chemistry <= 49)
fail_physics <- sum(students$Physics <= 49)

fail_chemistry
fail_physics

highest_chemistry <- max(students$Chemistry)
highest_physics <- max(students$Physics)

highest_chemistry
highest_physics