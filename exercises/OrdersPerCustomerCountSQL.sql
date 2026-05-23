-- Write a SQL query below --
SELECT c.first_name, c.last_name, COUNT(o.id) AS order_count
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY o.customer_id
HAVING COUNT(o.id) >= 1
ORDER BY order_count DESC;