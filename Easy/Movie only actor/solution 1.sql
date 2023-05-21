SELECT am.first_name, am.last_name
FROM actor_movie AS am
LEFT JOIN actor_tv AS av
ON am.actor_id = av.actor_id
WHERE av.actor_id IS NULL
