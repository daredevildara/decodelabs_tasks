-- =========================================================
-- PROJECT 3: SQL DATA ANALYSIS
-- SQL Dialect: SQLite
-- Table: sales
-- Purpose: Extract business insights from sales transactions.
-- =========================================================

-- 1. DATASET OVERVIEW
-- What is the overall scale, customer coverage, time range,
-- and sales value represented in the dataset?

SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT CustomerID) AS unique_customers,
    MIN(Date) AS first_order_date,
    MAX(Date) AS last_order_date,
    SUM(TotalPrice) AS total_sales_value,
    AVG(TotalPrice) AS average_order_value
FROM sales;


-- 2. PRODUCT PERFORMANCE
-- Which products generate the highest sales value, order volume,
-- and average order value?

SELECT
    Product,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value,
    COUNT(*) AS number_of_orders
FROM sales
GROUP BY Product
ORDER BY total_sales DESC;


-- 3. CUSTOMER / ORDER BEHAVIOUR
-- How much of the sales activity comes from one-time customers
-- compared with repeat customers?

SELECT
    CASE
        WHEN order_count = 1 THEN 'One-time customer'
        ELSE 'Repeat customer'
    END AS customer_type,
    COUNT(*) AS number_of_customers,
    SUM(order_count) AS total_orders,
    SUM(total_spend) AS total_sales,
    SUM(total_spend) / SUM(order_count) AS average_order_value
FROM (
    SELECT
        CustomerID,
        COUNT(*) AS order_count,
        SUM(TotalPrice) AS total_spend
    FROM sales
    GROUP BY CustomerID
) AS customer_summary
GROUP BY customer_type
ORDER BY total_sales DESC;


-- 4. PAYMENT BEHAVIOUR
-- How do payment methods compare in terms of order volume,
-- total sales, and average order value?

SELECT
    PaymentMethod,
    COUNT(*) AS number_of_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM sales
GROUP BY PaymentMethod
ORDER BY total_sales DESC;


-- 5. MARKETING PERFORMANCE

-- 5A. Referral source performance
-- Which referral sources generate the most orders and sales,
-- and which have the highest average order value?

SELECT
    ReferralSource,
    COUNT(*) AS number_of_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM sales
GROUP BY ReferralSource
ORDER BY total_sales DESC;


-- 5B. Referral source and coupon performance
-- How is coupon usage distributed across referral sources,
-- and which referral-source/coupon combinations generate
-- the greatest sales value?

SELECT
    ReferralSource,
    CouponCode,
    COUNT(*) AS number_of_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM sales
GROUP BY ReferralSource, CouponCode
ORDER BY total_sales DESC;


-- 6. ORDER-STATUS ANALYSIS
-- How are orders distributed across statuses, and how do
-- total sales and average order value vary by status?

SELECT
    OrderStatus,
    COUNT(*) AS number_of_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM sales
GROUP BY OrderStatus
ORDER BY total_sales DESC;


-- 7. TIME-BASED ANALYSIS

-- 7A. Strongest-performing months
-- Which five months recorded the highest total sales value?

SELECT
    strftime('%Y-%m', Date) AS order_month,
    COUNT(*) AS number_of_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM sales
GROUP BY order_month
ORDER BY total_sales DESC
LIMIT 5;


-- 7B. Weakest-performing months
-- Which five months recorded the lowest total sales value?

SELECT
    strftime('%Y-%m', Date) AS order_month,
    COUNT(*) AS number_of_orders,
    SUM(TotalPrice) AS total_sales,
    AVG(TotalPrice) AS average_order_value
FROM sales
GROUP BY order_month
ORDER BY total_sales ASC
LIMIT 5;
