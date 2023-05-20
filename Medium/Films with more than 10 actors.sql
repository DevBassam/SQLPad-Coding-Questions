-- Problem Link: https://sqlpad.io/questions/24/films-with-more-than-10-actors/

SELECT f.title
FROM film AS f
INNER JOIN film_actor AS act
ON f.film_id = act.film_id
GROUP BY f.title
HAVING count(*) >= 10
