-- TASK 6: Sales Trend Analysis Using Aggregations

-- 1. View Dataset
SELECT * FROM online_sales;

-- 2. Monthly Revenue and Order Volume
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Monthly_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;

-- 3. Monthly Revenue Only
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;

-- 4. Monthly Order Volume Only
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    COUNT(DISTINCT order_id) AS Orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;

-- 5. Top 3 Months by Revenue
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Revenue DESC
LIMIT 3;

-- 6. Total Revenue
SELECT
    SUM(amount) AS Total_Revenue
FROM online_sales;

-- 7. Total Orders
SELECT
    COUNT(DISTINCT order_id) AS Total_Orders
FROM online_sales;

-- 8. Average Order Value
SELECT
    AVG(amount) AS Average_Order_Value
FROM online_sales;

-- 9. Highest Revenue Month
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Revenue DESC
LIMIT 1;