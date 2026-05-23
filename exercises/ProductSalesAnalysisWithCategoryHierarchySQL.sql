-- Write a SQL query below --
SELECT p.name as product_name, c.name as category_name, IFNULL(SUM(o.quantity), 0) AS total_sold
FROM products AS p
LEFT JOIN categories AS c ON p.category_id = c.id
LEFT JOIN order_items AS o ON p.id = o.product_id
GROUP BY p.id, p.name, c.name
ORDER BY total_sold DESC, product_name ASC;