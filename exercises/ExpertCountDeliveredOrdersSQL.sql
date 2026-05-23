-- Write a SQL query below --
SELECT COUNT(id) AS total
FROM orders
WHERE order_status = 'Delivered';