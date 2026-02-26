# Input vector
scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61,
            13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

# Display scores
scores

# Count students by grade
A <- sum(scores >= 90 & scores <= 100)
B <- sum(scores >= 80 & scores <= 89)
C <- sum(scores >= 70 & scores <= 79)
D <- sum(scores >= 60 & scores <= 69)
E <- sum(scores >= 50 & scores <= 59)
F <- sum(scores <= 49)

# Display result
grade_count <- c(A=A, B=B, C=C, D=D, E=E, F=F)
grade_count

# TRUE if pass, FALSE if fail
pass_status <- scores > 49
pass_status