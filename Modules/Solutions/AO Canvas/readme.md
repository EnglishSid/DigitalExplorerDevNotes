# AO Canvas Alignment

relates to [Epic](https://jira.csc.com/browse/DE-302)

|DE|Number of Trends|AO|Combined|Action
|---|---|---|---|---|
|Business Technical Assessment & Design| 0 |None| |**DROP**
|Physical meets Digital|10|UX|UX|**RENAME**
|Integration & Composition|4|NA|Foundational Core|**MOVE**
|Business Process & Information|2|Transactional Core|Transactional Core|**RENAME**
|Applications|20+|Foundational Core|Foundational Core|**MOVE**
|Data & Analytics|20+|Foundational Core|Foundational Core|**MOVE**
|Security|20+|Security|Security|**NONE**
|Infrastructure|20+|Infra|Infrastructure|**NONE**
|Network|6|NA|Infrastructure|**MOVE**
|System Management & Operations|9|System Support|System Management & Operations|**NONE**

## Refactor technology groups


~~~
//RENAMES
MATCH (tg:TechnologyGroup {name:'Business Process & Information'}) 
SET tg.name='Transactional Core'
with count(*) as dummy
MATCH (tg:TechnologyGroup {name:'Physical meets Digital'}) 
SET tg.name='UX'
with count(*) as dummy
MATCH (tg:TechnologyGroup {name:'Business Process & Information'}) 
SET tg.name='Transactional Core'
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Business Process & Information'}) 
SET mtg.name='Transactional Core'
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Physical meets Digital'}) 
SET mtg.name='UX'
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Business Process & Information'}) 
SET mtg.name='Transactional Core'
~~~

~~~
//CREATE NEW
CREATE (tg:TechnologyGroup {name:'Foundational Core'})
with count(*) as dummy
CREATE (mtg:META_TechnologyGroup {name:'Foundational Core'})
with count(*) as dummy
MATCH (n:META_TechnologyGroups),(tg:META_TechnologyGroup {name:'Foundational Core'})
MERGE (n)<-[:META_ISVALUEOF]-(tg) 
RETURN n,tg
~~~


## Refactor existing technology trends
Integration & Composition - > Foundational Core
~~~
match (tt:TechnologyTrend)-[r]-(tg:TechnologyGroup {name:'Integration & Composition'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (tt)-[:ASSIGNED {lifecycleStage:r.lifecycleStage}]->(tg2)
delete r
return tt,tg,tg2
~~~
~~~
match (tt:TechnologyTrend)-[r]-(tg:TechnologyGroup {name:'Applications'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (tt)-[:ASSIGNED {lifecycleStage:r.lifecycleStage}]->(tg2)
delete r
return tt,tg,tg2
~~~
~~~
match (tt:TechnologyTrend)-[r]-(tg:TechnologyGroup {name:'Data & Analytics'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (tt)-[:ASSIGNED {lifecycleStage:r.lifecycleStage}]->(tg2)
delete r
return tt,tg,tg2
~~~
~~~
match (tt:TechnologyTrend)-[r]-(tg:TechnologyGroup {name:'Network'}),
(tg2:TechnologyGroup {name:'Infrastructure'})
merge (tt)-[:ASSIGNED {lifecycleStage:r.lifecycleStage}]->(tg2)
delete r
return tt,tg,tg2
~~~


## Refactor existing features
Business Technical Assessment & Design -> Foundational Core
~~~
match (f:Feature)-[r:REALIZEDBY]-(tg:TechnologyGroup {name:'Business Technical Assessment & Design'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (f)<-[:REALIZEDBY]->(tg2)
delete r
return f,tg,tg2
~~~

~~~
match (f:Feature)-[r:REALIZEDBY]-(tg:TechnologyGroup {name:'Integration & Composition'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (f)<-[:REALIZEDBY]-(tg2)
delete r
return f,tg,tg2
~~~
~~~
match (f:Feature)-[r:REALIZEDBY]-(tg:TechnologyGroup {name:'Applications'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (f)<-[:REALIZEDBY]-(tg2)
delete r
return f,tg,tg2
~~~
~~~
match (f:Feature)-[r:REALIZEDBY]-(tg:TechnologyGroup {name:'Data & Analytics'}),
(tg2:TechnologyGroup {name:'Foundational Core'})
merge (f)<-[:REALIZEDBY]-(tg2)
delete r
return f,tg,tg2
~~~
~~~
match (f:Feature)-[r:REALIZEDBY]-(tg:TechnologyGroup {name:'Network'}),
(tg2:TechnologyGroup {name:'Infrastructure'})
merge (f)<-[:REALIZEDBY]-(tg2)
delete r
return f,tg,tg2
~~~

#### a fix just in case
~~~
match (f:Feature)-[r:REALIZEDBY]->(tg:TechnologyGroup)
MERGE  (f)<-[r2:REALIZEDBY]->(tg)
delete r
~~~


## Clean up

~~~
MATCH (tg:TechnologyGroup {name:'Business Technical Assessment & Design'})
detach delete tg
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Business Technical Assessment & Design'})
detach delete mtg
with count(*) as dummy
MATCH (tg:TechnologyGroup {name:'Integration & Composition'})
detach delete tg
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Integration & Composition'})
detach delete mtg
with count(*) as dummy
MATCH (tg:TechnologyGroup {name:'Applications'})
detach delete tg
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Applications'})
detach delete mtg
with count(*) as dummy
MATCH (tg:TechnologyGroup {name:'Data & Analytics'})
detach delete tg
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Data & Analytics'})
detach delete mtg
with count(*) as dummy
MATCH (tg:TechnologyGroup {name:'Network'})
detach delete tg
with count(*) as dummy
MATCH (mtg:META_TechnologyGroup {name:'Network'})
detach delete mtg
~~~


~~~
MATCH (tg1:META_TechnologyGroup) WHERE tg1.name = 'UX'
MATCH (tg2:META_TechnologyGroup) WHERE tg2.name = 'Transactional Core'
MATCH (tg3:META_TechnologyGroup) WHERE tg3.name = 'Foundational Core'
MATCH (tg4:META_TechnologyGroup) WHERE tg4.name = 'Infrastructure'
MATCH (tg5:META_TechnologyGroup) WHERE tg5.name = 'Security'
MATCH (tg6:META_TechnologyGroup) WHERE tg6.name = 'System Management & Operations'
WITH tg1, tg2, tg3, tg4, tg5, tg6
SET tg1.order = 1
SET tg2.order = 2
SET tg3.order = 3
SET tg4.order = 4
SET tg5.order = 5
SET tg6.order = 6
RETURN tg1, tg2, tg3, tg4, tg5, tg6
~~~