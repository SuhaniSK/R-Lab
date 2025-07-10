library(readr)
library(ggplot2)

df <- read_csv("/Users/suhanisk/Downloads/baggagecomplaints.csv")
print(summary(df))

airline_avg <- aggregate(Baggage ~ Airline, data = df, FUN = mean)
print(airline_avg)

selected <- df[df$Airline %in% c("American Eagle", "Hawaiian", "United"), ]
yearly_avg <- aggregate(Baggage ~ Year + Airline, data = selected, FUN = mean)

ggplot(yearly_avg, aes(x = Year, y = Baggage, color = Airline)) +
  geom_line(size = 1.2) +
  geom_point(size = 2) +
  theme_minimal() +
  labs(
    title = "Yearly Average Baggage Complaints",
    x = "Year",
    y = "Average Complaints"        
    )