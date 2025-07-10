# Load required packages
library(ggplot2)
library(dplyr)
library(readr)

# Load the data
df <- read.csv("/Users/suhanisk/Downloads/treatmentfacility.csv")

# Summary
summary(df)

# Plot Employee Turnover
ggplot(df, aes(x = Reengineer, y = `Employee.Turnover`, fill = Reengineer)) +
  geom_boxplot() +
  labs(title = "Employee Turnover Before and After Reengineering")

# Plot TRFF
ggplot(df, aes(x = Reengineer, y = TRFF..., fill = Reengineer)) +
  geom_boxplot() +
  labs(title = "TRFF (%) Before and After Reengineering")
