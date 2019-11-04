# Master Features

DE-1063

~~~
MATCH (f:Feature)-[:REALIZEDBY]-(s:Solution) WITH f, MIN(s.creationDate) AS oldest MATCH (f)-[:REALIZEDBY]-(old:Solution) WHERE old.creationDate = oldest MERGE (f)-[:MASTER]->(old)
~~~
