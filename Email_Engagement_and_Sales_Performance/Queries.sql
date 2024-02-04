-- Sales by Product
SELECT product AS "Product",
    SUM(sales) AS "Total Sales"
FROM customer_sales
GROUP BY 1
ORDER BY 2 DESC;

-- Sales by Customer
SELECT customer_name AS "Customer",
    SUM(sales) AS "Total Sales"
FROM customer_sales
GROUP BY 1
ORDER BY 2 DESC;

-- Total Sales
SELECT SUM(sales) AS "Total Sales"
FROM customer_sales;

-- Sales by Month
SELECT MONTHNAME(date) AS "Month",
    SUM(sales) AS "Total Sales"
FROM customer_sales
GROUP BY 1,
    MONTH(date)
ORDER BY MONTH(date);

-- Total Orders
SELECT COUNT(*) AS "Total Orders"
FROM customer_sales;

-- Email Engagement
SELECT COUNT(email_received) AS "Emails Delivered",
    COUNT(CASE WHEN email_received THEN 1 END) AS "Emails Received",
    COUNT(CASE WHEN email_opened THEN 1 END) AS "Emails Opened",
    COUNT(CASE WHEN link_clicked THEN 1 END) AS "Links Clicked"
FROM customer_emails;