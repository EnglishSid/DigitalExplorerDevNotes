Update to map old solutions to sub-indsutries and not parent Industry node

~~~
match (s:Solution)-[r]-(i:Industry),(i)--(si:SubIndustry)
with s,i,si,r
MERGE (si)-[:INFLUENCE]->(s)
DELETE r
return s,si
~~~

## incorrect subindustry mapping
~~~
match (s:Solution)-[r:INFLUENCE]->(si:SubIndustry)
delete r
~~~