# Winners 2020



## Tag

~~~
CREATE (t:Tag {name:'Technical Excellence 2020 Winner'})
~~~


~~~
//Tag the solutions

MATCH (s)
WHERE ID(s) = 763759
with s
match (t:Tag {name:'Technical Excellence 2020 Winner'})
with s,t
MERGE (s)-[:DESCRIBEDBY]->(t)
return s,t
~~~


## Achievement

### Create the achievement

~~~
CREATE (a:Achievement {})
with a
merge (a)-[:ofType]->(at:META_AchievementType {name:'Solution'})
return a,at
~~~


### Assign the achievement
**UPDATE THE CREATIONDATE**

https://www.epochconverter.com/
add 3 zeros


1552917314000
1600269894000

~~~
match (t:Tag {name:'Award for Technical Excellence 2020 Winner'})--(s:Solution)<-[:ASSIGNED]-(p:Person),
(a:Achievement {shortName:'Technical Excellence 2020 Winner'})
MERGE (p)-[:HAS {creationDate:1600269894000}]-(a)
return a,p,s
~~~



### Solution ID's

766897
769132
761058
763759
779131
763921
746689
407468

---
