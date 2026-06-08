# Task-6-Sales-Trend-Analysis-Using-Aggregations

## Objective

The objective of this task is to analyze sales trends by calculating monthly revenue and order volume using SQL aggregation functions. This helps in understanding business performance over time and identifying high-performing months.

---

## Tools Used

* MySQL Workbench
* SQL
* GitHub

---

## Dataset

The dataset used for this task is **online_sales.csv**, which contains the following columns:

* `order_id` – Unique identifier for each order
* `order_date` – Date of the order
* `amount` – Revenue generated from the order
* `product_id` – Product identifier

---

## Tasks Performed

### 1. Data Retrieval

Retrieved sales data from the `online_sales` table using SQL queries.

### 2. Monthly Revenue Analysis

Calculated monthly revenue using the `SUM()` aggregate function.

### 3. Monthly Order Volume Analysis

Calculated monthly order volume using `COUNT(DISTINCT order_id)`.

### 4. Grouping Data

Grouped records by year and month using `GROUP BY`.

### 5. Sorting Results

Sorted the results chronologically using `ORDER BY`.

### 6. Top Sales Months

Identified the top 3 months with the highest revenue using `ORDER BY Revenue DESC` and `LIMIT 3`.

---

## SQL Concepts Used

* SELECT
* GROUP BY
* ORDER BY
* SUM()
* COUNT()
* COUNT(DISTINCT)
* AVG()
* YEAR()
* MONTH()
* LIMIT

---

## Sample Query

```sql
SELECT
    YEAR(order_date) AS Year,
    MONTH(order_date) AS Month,
    SUM(amount) AS Monthly_Revenue,
    COUNT(DISTINCT order_id) AS Order_Volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY Year, Month;
```

---

## Key Insights

* Revenue was analyzed on a monthly basis.
* Order volume trends were identified across different months.
* Top-performing months were determined based on total sales revenue.
* SQL aggregation functions simplified trend analysis and reporting.

---

## Outcome

Successfully analyzed monthly sales trends using SQL aggregation techniques. Gained practical experience with data grouping, revenue calculations, order volume analysis, and trend reporting using MySQL.

---

## Repository Contents

```text
Task-6-Sales-Trend-Analysis/
│
├── online_sales.csv
├── sales_trend_analysis.sql
├── README.md
├── screenshots/
│   ├── dataset_view.png
│   ├── monthly_revenue_orders.png
│   └── top_3_months.png
```

---

