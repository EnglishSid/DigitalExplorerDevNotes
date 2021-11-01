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


## Tag


~~~
//Tag the solutions

MATCH (s)
WHERE ID(s) = 766897
with s
match (t:Tag {name:'Technical Excellence 2020 Winner'})
with s,t
MERGE (s)-[:DESCRIBEDBY]->(t)
return s,t
~~~


## Achievement

### Create the achievement


### Assign the achievement
**UPDATE THE CREATIONDATE**

~~~
match (t:Tag {name:'Award for Technical Excellence 2020 Winner'})--(s:Solution)<-[:ASSIGNED]-(p:Person),
(a:Achievement {shortName:'Award for Technical Excellence 2020 Winner'})
MERGE (p)-[:HAS {creationDate:1552917314000}]-(a)
return a,p
~~~



### 2020

 Technical Excellence 2020 Winner

766897
769132
761058
763759
779131
763921
746689
407468


---
