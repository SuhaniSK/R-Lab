library(ggplot2)
library(readr)
library(dplyr)
df <- read.csv("/Users/suhanisk/Downloads/pricequotes.csv")
summary(df)
ggplot(df, aes(x = "Barry", y = Barry.Price)) +
  geom_boxplot(fill = "skyblue") +
  geom_boxplot(aes(x = "Mary", y = Mary.Price), fill = "lightgreen") +
  labs(
    title = "Boxplot of Price Quotes",
    x = "Person",
    y = "Price"
  )
