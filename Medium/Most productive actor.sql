-- Problem Link: https://sqlpad.io/questions/19/most-productive-actor/

SELECT actor.first_name, actor.last_name
FROM actor As ac
JOIN film_actor As fa 
ON ac.actor_id = fa.actor_id
GROUP BY ac.actor_id, ac.first_name, ac.last_name
ORDER BY COUNT(*) DESC
LIMIT 1
