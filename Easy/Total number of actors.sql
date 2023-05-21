-- Problem Link: https://sqlpad.io/questions/56/total-number-of-actors/

SELECT count(coalesce(av.actor_id, am.actor_id))
FROM actor_movie AS am
FULL OUTER JOIN actor_tv AS av
ON av.actor_id = am.actor_id
