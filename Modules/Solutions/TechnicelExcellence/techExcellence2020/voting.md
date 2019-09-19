# Neo4j Queries for voting


~~~
match (t:Tag {name:'Technical Excellence 2020 nomination'})--(s:Solution)-[v:VOTED_FOR]-(p:Person)
return s.name, count(v) as votes order by votes desc
~~~

~~~
match (t:Tag {name:'Technical Excellence 2020 nomination'})--(s:Solution)-[v:VOTED_FOR]-(p:Person)
return s,p
~~~