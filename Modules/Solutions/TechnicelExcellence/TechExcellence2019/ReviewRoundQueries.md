## assign the finalist tag
**change the name**
~~~
match (s:Solution {name:'Marksmanship application'}),(t:Tag {name:'Technical Excellence 2019 Finalist'})
MERGE (s)-[:DESCRIBEDBY]->(t) return s,t
~~~


## Contact list

~~~
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-> (t:Tag {name:'Technical Excellence 2019 Finalist'})
where r.role <> 'Editor'
OPTIONAL match (s)--(re:Region)
OPTIONAL match (s)--(a:Account)
return s.name as SolutionName,p.name as Contact,p.email as ContactEmail ,r.role as ContactRole,re.name as RegionName,a.name as AccountName
~~~
