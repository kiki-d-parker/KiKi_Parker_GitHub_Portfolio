-- Monthly Sales, Costs, and Profits
SELECT MONTHNAME(sales_date) AS "Month",
    ROUND(SUM(sales)) AS "Total Sales",
    ROUND(SUM(costs)) AS "Total Costs",
    ROUND(SUM(profits)) AS "Total Profits"
FROM orders
GROUP BY 1,
    MONTH(sales_date)
ORDER BY MONTH(sales_date);

-- Monthly Sales by Sales Channel
SELECT sales_channel AS "Sales Channel",
    MONTHNAME(sales_date) AS "Month",
    ROUND(SUM(sales)) AS "Total Sales",
    ROUND(SUM(costs)) AS "Total Costs",
    ROUND(SUM(profits)) AS "Total Profits"
FROM orders
GROUP BY 1,
    2,
    MONTH(sales_date)
ORDER BY 1,
    MONTH(sales_date);

-- Sales, Costs, and Profits by Product
SELECT product_name AS "Product Name",
    ROUND(SUM(sales)) AS "Total Sales",
    ROUND(SUM(costs)) AS "Total Costs",
    ROUND(SUM(profits)) AS "Total Profits"
FROM orders
    JOIN products ON orders.product_id = products.id
GROUP BY 1
ORDER BY 2 DESC;

-- Sales and Profits by Sales Team
SELECT sales_team AS "Sales Team",
    IFNULL(ROUND(SUM(sales)), 0) AS "Total Sales",
    IFNULL(ROUND(SUM(costs)), 0) AS "Total Costs",
    IFNULL(ROUND(SUM(profits)), 0) AS "Total Profits"
FROM orders
    RIGHT JOIN sales_teams ON orders.sales_team_id = sales_teams.id
GROUP BY 1
ORDER BY 2 DESC;

-- Sales by Region
SELECT region AS "Region",
    ROUND(SUM(sales)) AS "Total Sales"
FROM orders
    JOIN store_locations ON orders.store_id = store_locations.id
    JOIN regions ON store_locations.state_code = regions.state_code
GROUP BY 1
ORDER BY 2 DESC;

-- Total Sales
SELECT ROUND(SUM(sales)) AS "Total Sales"
FROM orders;

-- Total Costs
SELECT ROUND(SUM(costs)) AS "Total Costs"
FROM orders;

-- Total Profits
SELECT ROUND(SUM(profits)) AS "Total Profits"
FROM orders;

-- Total Products Sold
SELECT SUM(order_qty) AS "Total Products Sold"
FROM orders;

-- Total Orders
SELECT COUNT(order_number) AS "Total Orders"
FROM orders;

-- Profit Margin
SELECT CONCAT(ROUND(SUM(profits) / SUM(sales) * 100, 2), '%') AS "Profit Margin"
FROM Orders;

-- Sales by State
SELECT state AS "State",
    ROUND(SUM(sales)) AS "Total Sales"
FROM orders
    JOIN store_locations ON orders.store_id = store_locations.id
GROUP BY 1
ORDER BY 2 DESC;