--Problem Link: https://sqlpad.io/questions/40/top-2-most-rented-movie-in-june-2020/

SELECT f.film_id, f.title
FROM film AS f
INNER JOIN inventory AS inv 
ON inv.film_id = f.film_id
INNER JOIN rental AS r
ON r.inventory_id = inv.inventory_id
WHERE extract(month FROM r.rental_ts) = 6
	AND extract(year FROM r.rental_ts) = 2020
GROUP BY 1, 2
ORDER BY count(*) DESC
limit 2
