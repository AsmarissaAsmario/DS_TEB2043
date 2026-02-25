install.packages(c("ggplot2", "dplyr", "readr", "corrplot"))

library(ggplot2)
library(dplyr)
library(readr)
library(corrplot)

data <- read.csv("StudentPerformanceFactors.csv")

#structure
str(data)

#columnName
colnames(data)

#summary
summary(data)

#missingvalue
colSums(is.na(data))

#visualizations
ggplot(data, aes(x = Exam_Score)) +
  geom_histogram(binwidth = 5, fill = "pink", color = "purple") +
  labs(title = "Distribution of Exam Scores",
       x = "Exam Score",
       y = "Frequency") +
  theme_minimal()

ggplot(data, aes(x = Hours_Studied, y = Exam_Score)) +
  geom_point(color = "pink", alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Hours Studied vs Exam Score",
       x = "Hours Studied",
       y = "Exam Score") +
  theme_minimal()

ggplot(data, aes(x = Motivation_Level, y = Exam_Score, fill = Motivation_Level)) +
  geom_boxplot() +
  labs(title = "Motivation Level vs Exam Score",
       x = "Motivation Level",
       y = "Exam Score") +
  theme_minimal() +
  theme(legend.position = "none")

data %>%
  group_by(Gender) %>%
  summarise(Average_Score = mean(Exam_Score, na.rm = TRUE)) %>%
  ggplot(aes(x = Gender, y = Average_Score, fill = Gender)) +
  geom_bar(stat = "identity") +
  labs(title = "Average Exam Score by Gender",
       x = "Gender",
       y = "Average Exam Score") +
  theme_minimal() +
  theme(legend.position = "none")

# Select only numeric columns
numeric_data <- data %>%
  select(where(is.numeric))

# Compute correlation matrix
cor_matrix <- cor(numeric_data, use = "complete.obs")

# Plot heatmap
corrplot(cor_matrix, method = "color", type = "upper",
         tl.col = "black", tl.srt = 45)


