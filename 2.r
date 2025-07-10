library(ggplot2)
data(mtcars)
ggplot(data=mtcars,aes(sample=mpg))+
stat_qq()+
stat_qq_line()+
labs(
    title="Q-Q plot of mpg",
    x="theoretical Quantiles",
    y="Sample mpg Quantiles"
)