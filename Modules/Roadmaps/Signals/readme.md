# Signal review

## Base query

~~~
MATCH (s:ClientDisruptor) 
WHERE NOT (s)-[:SPECIALIZES]-()
WITH s 
MATCH (r:ClientDisruptor)
WHERE r.name = s.name 
WITH COUNT(r) as count, r
RETURN DISTINCT r.name AS name, count
ORDER BY count DESC
~~~

Find potential matching trends





