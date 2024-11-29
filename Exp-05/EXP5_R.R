data <- data.frame(
  age = c(25, 30, 22, 45, 55, 33, 41, 19, 60, 28),
  height = c(170, 165, 160, 175, 180, 168, 172, 158, 177, 169),
  weight = c(70, 60, 55, 80, 90, 65, 75, 50, 85, 62),
  bmi = c(24.2, 22.0, 21.5, 26.1, 27.8, 23.0, 25.4, 20.0, 27.1, 21.7)
)

# 1. Calculate mean, median, and standard deviation of each variable
mean_age <- mean(data$age)
median_age <- median(data$age)
sd_age <- sd(data$age)

mean_height <- mean(data$height)
median_height <- median(data$height)
sd_height <- sd(data$height)

mean_weight <- mean(data$weight)
median_weight <- median(data$weight)
sd_weight <- sd(data$weight)

mean_bmi <- mean(data$bmi)
median_bmi <- median(data$bmi)
sd_bmi <- sd(data$bmi)

# Print results
cat("Age - Mean:", mean_age, "Median:", median_age, "SD:", sd_age, "\n")
cat("Height - Mean:", mean_height, "Median:", median_height, "SD:", sd_height, "\n")
cat("Weight - Mean:", mean_weight, "Median:", median_weight, "SD:", sd_weight, "\n")
cat("BMI - Mean:", mean_bmi, "Median:", median_bmi, "SD:", sd_bmi, "\n")

# 2. Correlation between height and weight
correlation <- cor(data$height, data$weight)
cat("Correlation between height and weight:", correlation, "\n")

# 3. Visualize age distribution with a histogram
hist(data$age, main = "Age Distribution", xlab = "Age", col = "skyblue", border = "black")

boxplot(data$age, main = "Boxplot of Age", ylab = "Age", col = "orange")
