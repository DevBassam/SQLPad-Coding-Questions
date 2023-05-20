SELECT film_category, count(*)
FROM (
	SELECT CASE 
			WHEN length >= 100 THEN 'long'
			WHEN length < 60 THEN 'short'
			ELSE 'medium'
			END AS film_category
	FROM film
	) AS film
GROUP BY film_category
