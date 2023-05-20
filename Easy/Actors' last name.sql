SELECT last_name, count(*)
FROM actor
where last_name in ('DAVIS', 'BRODY', 'ALLEN', 'BERRY')
group by last_name;
