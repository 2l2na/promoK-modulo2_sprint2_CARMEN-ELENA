SELECT  'Hola!'  AS tipo_nombre
FROM order_details;
-- 1.Ciudades que empiezan con "A" o "B".
SELECT city,company_name,contact_name
	FROM customers
    WHERE city LIKE 'A%' OR city LIKE 'B%';
-- 2. Número de pedidos que han hecho en las ciudades que empiezan con L.
SELECT c.city, c.company_name, c.contact_name, COUNT(o.order_id)
	FROM customers as c
INNER JOIN orders as o
ON c.customer_id = o.customer_id
WHERE city LIKE 'A%' OR city LIKE 'B%'
GROUP BY c.company_name, c.city, c.contact_name;
-- 3. Todos los clientes cuyo "country" no incluya "USA".
SELECT company_name, country
	FROM customers
WHERE country NOT LIKE 'USA';
-- 4. Todos los clientes que no tengan una "A" en segunda posición en su nombre.
SELECT contact_name
	FROM customers
WHERE contact_name NOT LIKE '_A%'