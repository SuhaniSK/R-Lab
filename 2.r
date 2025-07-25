library(ggplot2)
data(mtcars)
head(mtcars)
ggplot(mtcars,aes(sample=mtcars$mpg))+
stat_qq()+
stat_qq_line()+
labs(
  title="Quartile Q-Q plot for MPG",
  x="Theoretical Quantiles",
  y="Sample Quantiles"
)
correlation<-cor.test(mtcars$mpg,mtcars$hp)
cat("Correlation bw hp and mpg is:",round(correlation$estimate,2),"\n")
cat("P-value of correlation test is:",round(correlation$p.value,4),"\n")
