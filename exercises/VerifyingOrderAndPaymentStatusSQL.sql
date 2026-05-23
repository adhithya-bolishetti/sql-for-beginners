-- Write a SQL query below --
SELECT id AS order_id, ROUND(total_amount, 2) AS total_amount, payment_status
FROM orders
WHERE order_status = 'Shipped' OR order_status = 'In Transit'
ORDER BY total_amount DESC;