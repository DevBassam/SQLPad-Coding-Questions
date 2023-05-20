-- Problem Link: https://sqlpad.io/questions/29/second-highest-spend-customer/


SELECT c.first_name	,c.last_name
FROM customer AS c
INNER JOIN payment AS p 
ON c.customer_id = p.customer_id
WHERE extract(month FROM p.payment_ts) = 5
	AND extract(year FROM p.payment_ts) = 2020
GROUP BY 1,2
ORDER BY sum(p.amount) DESC
OFFSET 1 
LIMIT 1;
