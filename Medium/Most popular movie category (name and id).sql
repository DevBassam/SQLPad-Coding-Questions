-- Problem Link: https://sqlpad.io/questions/38/most-popular-movie-category-name-and-id/


SELECT c.category_id, c.name
FROM category c
JOIN film_category fc 
ON fc.category_id = c.category_id
GROUP BY c.category_id, c.name
ORDER BY COUNT(fc.film_id) DESC
LIMIT 1
