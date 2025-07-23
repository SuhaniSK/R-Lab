# Load necessary library
library(readxl)

# Read the Excel file (change path if needed)
data <- read_excel("/Users/suhanisk/Desktop/wd/stats/fishstory.xls")

# Perform a paired t-test between 1980 and 1970 prices
t_test_result <- t.test(data$`1980Price`, data$`1970Price`, paired = TRUE)

# Print the t-test result
print(t_test_result)

# Calculate and print mean difference
mean_diff <- mean(data$`1980Price` - data$`1970Price`, na.rm = TRUE)
cat("Mean difference in price (1980 - 1970):", round(mean_diff, 2), "\n")

# Print 95% Confidence Interval
cat("95% Confidence Interval:", round(t_test_result$conf.int[1], 2), "to", round(t_test_result$conf.int[2], 2), "\n")
