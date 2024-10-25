-- Productos mas baratos y caros 

SELECT MIN(buy_price) AS lowestPrice, MAX(buy_price) AS highestPrice
	FROM products;

-- 2. Número de productos y su precio medio   
SELECT COUNT(product_code) AS numero_de_productos, AVG(buy_price) AS precio_medio
	FROM products;
    
-- 3. Máxima y mínima carga de los pedidos de UK






    