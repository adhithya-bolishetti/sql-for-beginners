-- Write a SQL query below --
SELECT CONCAT(c.first_name,' ', c.last_name) AS full_name, c.email AS email, a.city AS city
FROM customers as c
INNER JOIN addresses AS a ON c.id = a.customer_id
WHERE c.is_active = true AND a.is_default = true
ORDER BY c.first_name ASC;