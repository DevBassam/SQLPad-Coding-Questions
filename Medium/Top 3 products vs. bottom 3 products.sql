--Problem Link: 

WITH top AS(
	SELECT product_id, SUM(unit_price_usd * qty)
	FROM orders
        WHERE order_dt >= '2021-08-01'
        AND order_dt < '2021-09-01'
	GROUP BY product_id
	ORDER BY SUM(unit_price_usd * qty) DESC 
	LIMIT 3
), 
bottom AS (
	SELECT product_id, SUM(unit_price_usd * qty) 
	FROM orders
        WHERE order_dt >= '2021-08-01'
        AND order_dt < '2021-09-01'
	GROUP BY product_id
	ORDER BY SUM(unit_price_usd * qty) 
	LIMIT 3
)
SELECT top.product_id, 'top'  AS category
FROM top
UNION ALL
SELECT bottom.product_id, 'bottom' AS category
FROM bottom;
