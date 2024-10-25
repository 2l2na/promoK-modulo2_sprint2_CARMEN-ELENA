/* Extraed los pedidos con el máximo "order_date" para cada empleado.
Nuestro jefe quiere saber la fecha de los pedidos más recientes que ha 
gestionado cada empleado. Para eso nos pide que lo hagamos con una query correlacionada. */

SELECT *
	FROM ORDERS;
    
SELECT MAX(order_date) -- sacamos el máx order_date del empleado 5
	FROM orderes
	WHERE employee_id = 5;
    
SELECT order_id, employee_id, order_date 					-- o1 es nuestra tabla principal							
	FROM orders AS o1										-- o2 es la de la subqueri
    WHERE order_date =(SELECT MAX(order_date) 
						FROM orders AS o2
						WHERE o1.employee_id = o2.employee_id); -- así iteramos por cada employeee_id y le aplicamos el max(order_date)
																-- Lo que metamos en la posición o1.employeee_id, tiene que estar en el resultado de la query principal
                                                                
/* Extraed el precio unitario máximo (unit_price) de cada producto vendido.
Supongamos que ahora nuestro jefe quiere un informe de los productos vendidos y su precio unitario. 
De nuevo lo tendréis que hacer con queries correlacionadas. */

SELECT product_id, unit_price
	FROM order_details
    WHERE MAX(unit_price);