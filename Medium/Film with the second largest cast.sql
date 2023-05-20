--Problem Link: https://sqlpad.io/questions/28/film-with-the-second-largest-cast/

SELECT f.title
FROM film AS f
INNER JOIN film_actor AS act 
ON f.film_id = act.film_id
GROUP BY f.title
ORDER BY count(*) DESC 
offset 1 limit 1;
