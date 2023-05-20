SELECT COUNT(DISTINCT customer_id)
FROM rental
WHERE EXTRACT(MONTH FROM rental_ts) = 5
	AND EXTRACT(YEAR FROM rental_ts) = 2020
	AND customer_id IN (
		SELECT customer_id
		FROM rental
		WHERE EXTRACT(MONTH FROM rental_ts) = 6
			AND EXTRACT(YEAR FROM rental_ts) = 2020
		);
