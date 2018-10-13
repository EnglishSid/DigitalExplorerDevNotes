## October 12 2018

Update to map old solutions to sub-industries and not parent Industry node

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


## new auth model

~~~
create (r:Role {name:'DXCEmployee'})
return r
~~~
~~~
match (p:Person),(r:Role {name:'DXCEmployee'})
where p.email contains '@dxc.com'
MERGE (p) - [:ASSIGNED]  -> (r)
~~~

~~~
match (p:Person),(r:Role {name:'DXCEmployee'})
where p.email contains '@csc.com'
MERGE (p) - [:ASSIGNED]  -> (r)
~~~

## Solution types

- See solutionTypeRefactor.md in solution module 