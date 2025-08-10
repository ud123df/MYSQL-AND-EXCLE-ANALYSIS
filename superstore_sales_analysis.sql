-- TOTAL SALES
SELECT SUM(sales) AS total_sales FROM superstore_sales;

-- top 10 products by total sales
SELECT product_name, SUM(sales) AS total_sales 
FROM superstore_sales GROUP BY product_name ORDER BY total_sales DESC LIMIT 10;

-- TOTAL PROFIT
SELECT SUM(profit) AS total_profit FROM superstore_sales;

-- finding most profitable product categories

SELECT category, SUM(profit) total_profit 
FROM superstore_sales GROUP BY category ORDER BY total_profit DESC;

-- total orders
SELECT COUNT(distinct order_id) AS total_orders FROM superstore_sales;

-- MONTHLY SALES TREND 
SELECT DATE_FORMAT(order_date, '%Y-%m') AS Month,
SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY Month
ORDER BY Month;