library(readr)
library(ggplot2)
library(dplyr)
data<-read.csv("/Users/suhanisk/Downloads/medicalmalpractice.csv")
cat("claim payment amount:\n")
print(summary(data$Amount))
cat("mean:",mean(data$Amount),"\nSd:",sd(data$Amount),"\n")

hist(log10(data$Amount),
main="histogram of claim ",xlab="log amount",
col="lightblue",breaks=20)

specialty_counts<-sort(table(data$Specialty),decreasing=TRUE)
top3_specialities<-names(specialty_counts[1:3])
top3_data<-data[data$Specialty %in% top3_specialities,]
ggplot(top3_data,aes(x=Amount,y=Specialty,fill=Specialty)) + 
geom_boxplot()+
labs(title="Claim Amounts by Top 3 Specialties",
x="Claim Amount ($)",
y="Specialty") +
theme_minimal()

spec_table <- table(data$Specialty)
total <- nrow(data)
cat("\nPercentage of Claims:\n")
cat("Anesthesiology:",round(100*spec_table["Anesthesiology"]/total,2),"%\n")
cat("Dermatology:",round(100*spec_table["Dermatology"]/total,2),"%\n")
cat("Orthopedic Surgery:",round(100*spec_table["Orthopedic Surgery"]/total,2),"%\n")  
cor_result<-cor(data$Age,data$Amount)

cat("\nAge vs. Amount Correlation:\n")
cat("Correlation:", round(cor_result, 3), "\n")
