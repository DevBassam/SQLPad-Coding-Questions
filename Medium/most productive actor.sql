-- Problem Link: https://sqlpad.io/questions/19/most-productive-actor/

SELECT actor.first_name, actor.last_name
FROM actor
JOIN film_actor 
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id, actor.first_name, actor.last_name
ORDER BY COUNT(*) DESC
LIMIT 1;
