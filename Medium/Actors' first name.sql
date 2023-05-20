-- Problem Link: https://sqlpad.io/questions/13/actors-first-name/

SELECT actor_category, count(*)
FROM (
	SELECT CASE 
			WHEN first_name LIKE 'A%' THEN 'a_actors'
			WHEN first_name LIKE 'B%' THEN 'b_actors'
			WHEN first_name LIKE 'C%' THEN 'c_actors'
			ELSE 'other_actors'
			END AS actor_category
	FROM actor
	) AS ac
GROUP BY actor_category
