-- Problem Link: https://sqlpad.io/questions/49/top-3-money-making-movie-categories/

SELECT c.name as category_name, SUM(p.amount) as rental_revenue
FROM category c
JOIN film_category fc 
ON fc.category_id = c.category_id
JOIN inventory i 
ON i.film_id = fc.film_id
JOIN rental r 
ON r.inventory_id = i.inventory_id
JOIN payment p
ON p.rental_id = r.rental_id
GROUP BY c.name
ORDER BY rental_revenue DESC
LIMIT 3
