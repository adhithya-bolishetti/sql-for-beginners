-- Write a SQL query below --
SELECT name, ROUND(price, 2) AS price, stock
FROM products
WHERE (category_id = 2 OR category_id = 5) AND stock < 20
ORDER BY stock ASC;