--Problem Link: https://sqlpad.io/questions/62/shortest-film-by-category/

SELECT subquery.film_id
	,subquery.title
	,subquery.length
	,subquery.name
	,subquery.row_num
FROM (
	SELECT f.film_id
		,f.title
		,f.length
		,c.name
		,ROW_NUMBER() OVER (PARTITION BY c.name	ORDER BY f.length) AS row_num
	FROM category AS c
	INNER JOIN film_category AS fc
	ON c.category_id = fc.category_id
	INNER JOIN film AS f
	ON f.film_id = fc.film_id
	) AS subquery
WHERE subquery.row_num = 1
