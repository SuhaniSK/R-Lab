# Load required libraries
library(ggplot2)
library(readr)

# 1. Read the dataset
data <- read.csv("/Users/suhanisk/Downloads/medicalmalpractice.csv")

# 2. Summary statistics for Claim Amounts
cat("Claim Payment Amounts:\n")
print(summary(data$Amount))
cat("Mean:", mean(data$Amount), "\nSD:", sd(data$Amount), "\n\n")

# 3. Histogram of log-transformed claim amounts
hist(log10(data$Amount),
     main = "Histogram of Claim Amounts (Log Scale)",
     xlab = "Log Amount ($)",
     col = "lightblue",
     breaks = 20)

# 4. Top 3 Most Frequent Specialties
specialty_counts <- sort(table(data$Specialty), decreasing = TRUE)
top3_specialties <- names(specialty_counts[1:3])

# 5. Filter data for top 3 specialties
top3_data <- data[data$Specialty %in% top3_specialties, ]

# 6. Boxplot: Specialty on Y-axis, Amount on X-axis
ggplot(top3_data, aes(x = Amount, y = Specialty, fill = Specialty)) +
  geom_boxplot() +
  labs(
    title = "Claim Amounts by Top 3 Specialties",
    x = "Claim Amount ($)",
    y = "Specialty"
  ) +
  theme_minimal()

# 7. Percentage of claims for selected specialties
spec_table <- table(data$Specialty)
total <- nrow(data)

cat("\nPercentage of Claims:\n")
cat("Anesthesiology:", round(100 * spec_table["Anesthesiology"] / total, 2), "%\n")
cat("Dermatology:", round(100 * spec_table["Dermatology"] / total, 2), "%\n")
cat("Orthopedic Surgery:", round(100 * spec_table["Orthopedic Surgery"] / total, 2), "%\n")

# 8. Pearson correlation between Age and Amount
cor_result <- cor.test(data$Age, data$Amount)

cat("\nAge vs. Amount Correlation:\n")
cat("Correlation:", round(cor_result$estimate, 3))
