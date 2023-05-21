# Which solution is better ?
Problem Link : https://sqlpad.io/questions/51/movie-only-actor/

Both queries will produce the same result, but in terms of performance,
it depends on the size of the tables and the indexing strategy.

In general, the NOT IN subquery approach can be slower than the LEFT JOIN approach,
especially if the actor_tv table is large and not indexed properly.

On the other hand,
the LEFT JOIN approach may be slower if the actor_movie table is large and not indexed properly.
