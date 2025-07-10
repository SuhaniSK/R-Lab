# Scores of 10 students in SMIP and DBMS
smip_scores <- c(70, 46, 94, 34, 20, 86, 18, 12, 56, 64)
dbms_scores <- c(60, 66, 90, 46, 16, 98, 24, 8, 32, 54)

# Perform Spearman Rank Correlation test
cor_result <- cor.test(smip_scores, dbms_scores, method = "spearman")

# Print result
cat("Spearman Rank Correlation Coefficient:", round(cor_result$estimate, 4), "\n")
cat("P-value:", round(cor_result$p.value, 4), "\n")

# Uncomment the following lines if you want to use scipy in Python
# import scipy.stats as stats
# smip_scores = [70, 46, 94, 34, 20, 86, 18, 12, 56, 64]
# dbms_scores = [60, 66, 90, 46, 16, 98, 24, 8, 32, 54]
# correlation, p_value = stats.spearmanr(smip_scores, dbms_scores)
# print(f"Spearman Rank Correlation: {correlation}")
# print(f"P-value: {p_value}")
