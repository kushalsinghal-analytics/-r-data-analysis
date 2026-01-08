stock_data$Daily_Change <- stock_data$Close - stock_data$Open

# 3. Add Status (Profit/Loss) using ifelse
stock_data$Status <- ifelse(stock_data$Daily_Change > 0, "Profit", "Loss")

# Print the table
print(stock_data)

# 4. Visualization (Using Base R plot)
# type="o" means lines with dots (Overplotted)
# col="blue" makes the line blue
plot(stock_data$Date, stock_data$Close, 
     type = "o", 
     col = "blue", 
     lwd = 2,
     main = "TechCorp Stock Price Trend (Base R)",
     xlab = "Date", 
     ylab = "Closing Price ($)")

