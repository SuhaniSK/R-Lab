# Load required libraries
library(forecast)
library(ggplot2)
library(readr)
# Read the dataset
data <- read.csv("/Users/suhanisk/Downloads/AusAntidiabeticDrug.csv")
# View column names to verify
print(names(data))  # Expecting "ds" and "y"
# Convert 'ds' to Date type
data$ds <- as.Date(data$ds)
# Create time series object
ts_data <- ts(data$y, start = c(1991, 1), frequency = 12)
# Fit Holt-Winters model
model <- HoltWinters(ts_data)
# Forecast next 24 months
forecast_data <- forecast(model, h = 24)
# Plot the forecast
plot(forecast_data,
     main = "Monthly Antidiabetic Drug Sales Forecast",
     xlab = "Time", ylab = "Sales ($ Millions)",
     col.main = "darkblue", col.lab = "black")







#Python code to forecast monthly antidiabetic drug sales using Holt-Winters method
 # Load libraries
# import pandas as pd
# import matplotlib.pyplot as plt
# from statsmodels.tsa.holtwinters import ExponentialSmoothing

# # Load the dataset
# df = pd.read_csv("AustraliaDrugSales.csv", parse_dates=['date'])
# df.set_index('date', inplace=True)
# df.index.freq = 'MS'  # MS = Month Start


# # Build and fit the model
# model = ExponentialSmoothing(
#     df['value'],
#     trend='add',
#     seasonal='add',
#     seasonal_periods=12
# ).fit()

# # Forecast next 24 months
# forecast = model.forecast(24)

# # Plot original, fitted, and forecast values
# plt.figure(figsize=(12, 6))
# plt.plot(df.index, df['value'], label='Observed', color='blue')
# plt.plot(model.fittedvalues.index, model.fittedvalues, label='Fitted', color='red')
# plt.plot(forecast.index, forecast, label='Forecast', color='green')
# plt.xlabel("Time")
# plt.ylabel("Sales ($ Millions)")
# plt.title("Monthly Antidiabetic Drug Sales Forecast")
# plt.legend()
# plt.tight_layout()
# plt.show()
