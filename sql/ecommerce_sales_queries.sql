CREATE DATABASE retail_sales_intelligence_dashboard;

USE retail_sales_intelligence_dashboard;

SELECT * FROM superstore_cleaned;

SELECT COUNT(*) FROM superstore_cleaned;

#check table structure
DESCRIBE superstore_cleaned;

#overall kpi summary
SELECT
    COUNT(*) AS total_records,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage,
    ROUND(AVG(Discount) * 100, 2) AS average_discount_percentage
FROM superstore_cleaned;

#Category-wise Sales & Profit Analysis
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM superstore_cleaned
GROUP BY Category
ORDER BY total_sales DESC;

#Loss making sub-catagories
SELECT
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM superstore_cleaned
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY total_profit ASC;

#sales analysis by region
SELECT
    Region,
    SUM(Sales) AS total_sales
FROM superstore_cleaned
GROUP BY Region;

#regional revenue contribution analysis
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        (SUM(Sales) /
        (SELECT SUM(Sales) FROM superstore_cleaned)) * 100,
    2) AS revenue_contribution_percentage
FROM superstore_cleaned
GROUP BY Region
ORDER BY total_sales DESC;

#discount impact analysis
SELECT
    Discount,
    ROUND(AVG(Profit), 2) AS average_profit
FROM superstore_cleaned
GROUP BY Discount
ORDER BY Discount;

#discount impact on profit
-- Discount Impact Analysis

SELECT
    Discount,
    COUNT(*) AS total_orders,
    ROUND(AVG(Sales), 2) AS average_sales,
    ROUND(AVG(Profit), 2) AS average_profit
FROM superstore_cleaned
GROUP BY Discount
ORDER BY Discount;

#Customer Segment Sales and Profit Analysis
SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM superstore_cleaned
GROUP BY Segment
ORDER BY total_sales DESC;

-- Top 10 States by Sales

SELECT
    State,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_cleaned
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;

-- Executive KPI Summary

SELECT
    COUNT(*) AS total_records,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage,
    ROUND(AVG(Discount) * 100, 2) AS average_discount_percentage,
    ROUND(SUM(Quantity), 0) AS total_quantity_sold
FROM superstore_cleaned;

-- Create Category Performance View

CREATE VIEW category_performance_view AS
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS profit_margin_percentage
FROM superstore_cleaned
GROUP BY Category;

SELECT * FROM category_performance_view;

-- Create Regional Performance View

CREATE VIEW regional_performance_view AS
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(
        (SUM(Sales) /
        (SELECT SUM(Sales) FROM superstore_cleaned)) * 100,
    2) AS revenue_contribution_percentage
FROM superstore_cleaned
GROUP BY Region;

SELECT * FROM regional_performance_view;



