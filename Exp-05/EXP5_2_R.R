scores <- data.frame(
  student = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  mathematics = c(90, 85, 78, 92, 88, 84, 76, 91, 89, 77),
  science = c(88, 79, 85, 95, 91, 80, 83, 92, 87, 78),
  english = c(85, 82, 90, 86, 80, 88, 84, 87, 91, 79)
)

# 1. Compute the mean, median, and mode for each subject
mean_math <- mean(scores$mathematics)
median_math <- median(scores$mathematics)
mode_math <- as.numeric(names(sort(table(scores$mathematics), decreasing = TRUE)[1]))  

mean_sci <- mean(scores$science)
median_sci <- median(scores$science)
mode_sci <- as.numeric(names(sort(table(scores$science), decreasing = TRUE)[1]))  

mean_eng <- mean(scores$english)
median_eng <- median(scores$english)
mode_eng <- as.numeric(names(sort(table(scores$english), decreasing = TRUE)[1]))  

# Print results for each subject
cat("Mathematics - Mean:", mean_math, "Median:", median_math, "Mode:", mode_math, "\n")
cat("Science - Mean:", mean_sci, "Median:", median_sci, "Mode:", mode_sci, "\n")
cat("English - Mean:", mean_eng, "Median:", median_eng, "Mode:", mode_eng, "\n")

# 2. Identify the subject with the highest variability using standard deviation
sd_math <- sd(scores$mathematics)
sd_sci <- sd(scores$science)
sd_eng <- sd(scores$english)

cat("Standard Deviation - Mathematics:", sd_math, "\n")
cat("Standard Deviation - Science:", sd_sci, "\n")
cat("Standard Deviation - English:", sd_eng, "\n")

max_sd <- max(sd_math, sd_sci, sd_eng)
if (max_sd == sd_math) {
  cat("Subject with highest variability: Mathematics\n")
} else if (max_sd == sd_sci) {
  cat("Subject with highest variability: Science\n")
} else {
  cat("Subject with highest variability: English\n")
}

# 3. Create boxplots for each subject
boxplot(scores$mathematics, main = "Boxplot for Mathematics", ylab = "Scores", col = "lightblue")
boxplot(scores$science, main = "Boxplot for Science", ylab = "Scores", col = "lightgreen")
boxplot(scores$english, main = "Boxplot for English", ylab = "Scores", col = "lightcoral")

# 4. Visualize the relationship between Mathematics and Science scores using a scatter plot
plot(scores$mathematics, scores$science,
     main = "Mathematics vs Science Scores",
     xlab = "Mathematics Scores",
     ylab = "Science Scores",
     pch = 19, col = "blue")

abline(lm(scores$science ~ scores$mathematics), col = "red")
