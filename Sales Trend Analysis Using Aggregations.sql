select * from orders_data;

-- Extract month
SELECT EXTRACT(MONTH FROM order_date) AS order_month
FROM orders_data;

-- Group By
SELECT MONTH(order_date) AS month, COUNT(*) AS count
FROM orders_data
GROUP BY MONTH(order_date);

-- sum() for revenue
SELECT SUM(sales) AS total_revenue FROM orders_data;

SELECT region, SUM(sales) AS revenue_by_region
FROM orders_data
GROUP BY region;

SELECT category, SUM(sales) AS revenue_by_category
FROM orders_data
GROUP BY category;

SELECT customer_name, SUM(sales) AS revenue_by_customer
FROM orders_data
GROUP BY customer_name
ORDER BY revenue_by_customer DESC;

-- COUNT
SELECT COUNT(DISTINCT order_id) AS total_sales_volume
FROM orders_data;

-- orderby
SELECT region, SUM(sales) AS revenue
FROM orders_data
GROUP BY region
ORDER BY revenue DESC;

-- Limit results for specific periods
SELECT SUM(sales) AS revenue_2020
FROM orders_data
WHERE order_date BETWEEN '2020-01-01' AND '2020-12-31';

SELECT region, COUNT(DISTINCT order_id) AS order_volume_q4_2019
FROM orders_data
WHERE order_date BETWEEN '2019-10-01' AND '2019-12-31'
GROUP BY region
ORDER BY order_volume_q4_2019 DESC;