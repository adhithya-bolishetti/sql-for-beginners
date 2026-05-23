-- Write a SQL query below --
SELECT o.order_id, p.name AS product_name, o.quantity, ROUND(o.price, 2) AS price
FROM order_items o
INNER JOIN products p ON o.product_id = p.id
WHERE quantity > 1
ORDER BY order_id ASC;