# Project: Stock Price Trend Analysis
# Tech Stack: R, dplyr, ggplot2

# 1. Load libraries
library(dplyr)
library(ggplot2)

# 2. Create the dataset
stock_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Open = c(100, 102, 101, 105, 108),
  Close = c(102, 100, 104, 108, 107)
)

# 3. Data Manipulation (Calculate Daily Change and Status)
analysis_df <- stock_data %>%
  mutate(Daily_Change = Close - Open,
         Status = ifelse(Daily_Change > 0, "Profit", "Loss"))

# Print the data to console to verify
print(analysis_df)

# 4. Visualization
ggplot(data = analysis_df, aes(x = Date, y = Close)) +
  geom_line(color = "blue", linewidth = 1) +  # Fixed: used 'linewidth' instead of 'size'
  geom_point(size = 3) +
  labs(title = "TechCorp Stock Price Trend",
       subtitle = "5-Day Performance Analysis",
       y = "Closing Price ($)",
       x = "Date") +
  theme_minimal()
