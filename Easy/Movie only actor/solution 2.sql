SELECT first_name, last_name
FROM actor_movie
WHERE actor_id NOT IN (
  SELECT actor_id
  FROM actor_tv
)
