# print("Suhani")
# print("Hello World")

# # Load ggplot2 library
# library(ggplot2)

# # Load the built-in dataset
# data(mtcars)

# # View the dataset
# head(mtcars)

# # Compute correlation between mpg (Miles per Gallon) and hp (Horsepower)
# correlation <- cor(mtcars$mpg, mtcars$hp)

# # Print the correlation
# print(paste("correlation between mpg and hp is:", round(correlation, 2)))
# # paste()	Joins words or variables into a string
# # print()	Displays the result in the console

# # Create scatter plot with regression line
# ggplot(data = mtcars, aes(x = hp, y = mpg)) +
#   geom_point(shape = 4, color = "blue", size = 3) +
#   geom_smooth(method = "lm", se = FALSE) +
#   labs(
#     title = "MPG vs HorsePower",
#     x = "HorsePower (HP)",
#     y = "Miles per Gallon (mpg)"
#   ) +
#   theme_minimal()


library(ggplot2)
data(mtcars)
head(mtcars)
correlation<-cor(mtcars$mpg,mtcars$hp)
print(paste("correlation of mpg and hp is:",(round(correlation,2))))
ggplot(data=mtcars,aes(x=hp,y=mpg))+
geom_point(shape=4,color="blue",size=3)+
geom_smooth(method="lm",se=FALSE)+
labs(
    title="MPG vs HORSEPOWER",
    x="HorsePower (HP)",
    y="Miles per Gallon (mpg)"
)+
theme_minimal()
