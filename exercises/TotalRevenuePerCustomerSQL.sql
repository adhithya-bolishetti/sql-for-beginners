-- Write a SQL query below --
SELECT c.first_name, c.last_name, ROUND(SUM(o.total_amount), 2) AS total_revenue
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY o.customer_id
ORDER BY total_revenue DESC;