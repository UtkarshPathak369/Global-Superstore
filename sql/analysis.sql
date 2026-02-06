-- Global Superstore Sales Analysis
-- Author: Utkarsh Pathak
-- Database: MySQL
-- Description: SQL queries for business insights

-- 1. Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region;

-- 2. Total profit by category
SELECT category, SUM(profit) AS total_profit
FROM superstore
GROUP BY category;

-- 3. Top 5 selling products
SELECT product_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;
