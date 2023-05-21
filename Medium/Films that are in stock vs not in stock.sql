--Problem Link: https://sqlpad.io/questions/42/films-that-are-in-stock-vs-not-in-stock/

WITH total_film AS (
	SELECT COUNT(*) AS count
	FROM film
	)
	,
inventory_film AS (
	SELECT COUNT(DISTINCT film_id) AS count
	FROM inventory
	)
SELECT CASE WHEN inventory_film.count > 0 THEN 'in stock' END AS in_stock
	,CASE WHEN inventory_film.count > 0 THEN inventory_film.count END AS count
FROM inventory_film

UNION ALL

SELECT 'not in stock', total_film.count - inventory_film.count
FROM total_film, inventory_film
