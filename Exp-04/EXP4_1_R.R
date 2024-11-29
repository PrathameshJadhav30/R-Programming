sales_data <- data.frame(
  product = c("A", "B", "C", "D", "E"),
  price = c(100, 150, 120, 130, 90),
  units_sold = c(200, 300, 250, 150, 180),
  profit = c(5000, 8000, 6000, 4000, 4500)
)

# 1. Calculate average sales, median price, and total profit
sales_data$sales <- sales_data$price * sales_data$units_sold  # Calculate total sales for each product

average_sales <- mean(sales_data$sales)  # Average sales
median_price <- median(sales_data$price)  # Median product price
total_profit <- sum(sales_data$profit)  # Total profit

# Print results
cat("Average Sales:", average_sales, "\n")
cat("Median Price:", median_price, "\n")
cat("Total Profit:", total_profit, "\n")

# 2. Analyze variability in sales using standard deviation
sales_sd <- sd(sales_data$sales)
cat("Standard Deviation of Sales:", sales_sd, "\n")

# 3. Visualize sales and profit data using scatter plots
plot(sales_data$price, sales_data$profit, 
     main = "Price vs Profit",
     xlab = "Price",
     ylab = "Profit",
     pch = 19, col = "blue")

plot(sales_data$sales, sales_data$profit, 
     main = "Sales vs Profit",
     xlab = "Sales",
     ylab = "Profit",
     pch = 19, col = "orange")
