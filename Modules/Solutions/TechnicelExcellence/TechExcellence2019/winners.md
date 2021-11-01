# Winners
## Assigning the achievement 

|Solution|Link|ID|
|---|---|---|
|Essential Energy Smart AR Checklist|https://digitalexplorer.dxc.com/se/solutions/404676|404676
|R&D Platform for Fully Autonomous Driving|https://digitalexplorer.dxc.com/se/solutions/416543|416543
|Crew Training Instructor Self Scheduling Responsive Web Application|https://digitalexplorer.dxc.com/se/solutions/413817|413817
|Platform DXC|https://digitalexplorer.dxc.com/se/solutions/432351|432351
|Cybersecurity Reference Architecture (CRA)|https://digitalexplorer.dxc.com/se/solutions/377617|377617
|DXC Disruption Management|https://digitalexplorer.dxc.com/se/solutions/14370|14370
|ePOS - Electronic Point of Sales for Insurance|https://digitalexplorer.dxc.com/se/solutions/411219|411219
|DXC Personas using AI to transcribe clinician’s conversations to structured data|https://digitalexplorer.dxc.com/se/solutions/414772|414772
|India Post Bank Countrywide Banking Solution|https://digitalexplorer.dxc.com/se/solutions/413320|413320


## Achievement


~~~
//Tag the solutions

MATCH (s)
WHERE ID(s) = 413320
with s
match (t:Tag {name:'Technical Excellence 2019 Winner'})
with s,t
MERGE (s)-[:DESCRIBEDBY]->(t)
return s,t
~~~

~~~
match (t:Tag {name:'Award for Technical Excellence 2019 Winner'})--(s:Solution)<-[:ASSIGNED]-(p:Person),
(a:Achievement {shortName:'Award for Technical Excellence 2019 Winner'})
MERGE (p)-[:HAS {creationDate:1552917314000}]-(a)
return a,p
~~~






---
### Missing people

~~~
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Terese Pate', email:'terese.pate@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Joan Watson', email:'joan.watson@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Marco Pereira', email:'marco@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Kory Hubbard', email:'kory.hubbard@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Carrie Rangeen', email:'carrie.rangeen@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Chris Janssen', email:'chris.janssen@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Huynh Trung Liem', email:'lhuynh24@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Tony Brown', email:'tbrown42@csc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Vijay Saradhi Palaparthi', email:'vijaysaradhi@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Kanwal Gupta', email:'kanwal.gupta@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
~~~