#Not sure about the code as i didnt get the dataset, but here is the code to perform correlation analysis and visualize it using ggpairs.
# Load libraries
library(readr)
library(GGally)   # For ggpairs
library(dplyr)

# Load the fitness dataset
fitness <- read_csv("/Users/suhanisk/Desktop/wd/stats/CardioGoodFitness.csv")

# Select only numeric columns for correlation analysis
numeric_data <- fitness[sapply(fitness, is.numeric)]

# Scatterplot matrix for all numeric variables
ggpairs(numeric_data)

# Compute correlation matrix
cor_matrix <- cor(numeric_data)

# Print correlation matrix
print(cor_matrix)

# Extract only upper triangle (ignore duplicates and self-correlations)
cor_matrix[lower.tri(cor_matrix, diag = TRUE)] <- NA
cor_values <- na.omit(as.data.frame(as.table(cor_matrix)))

# Strongest positive correlation
strongest_pos <- cor_values[which.max(cor_values$Freq), ]

# Strongest negative correlation
strongest_neg <- cor_values[which.min(cor_values$Freq), ]

# Print the strongest correlations
cat("Strongest Positive Correlation:\n")
print(strongest_pos)

cat("\nStrongest Negative Correlation:\n")
print(strongest_neg)
