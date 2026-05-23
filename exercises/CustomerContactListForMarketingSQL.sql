-- Write a SQL query below --
SELECT first_name, last_name, email
FROM customers
wHERE is_active = true
ORDER BY last_name ASC;