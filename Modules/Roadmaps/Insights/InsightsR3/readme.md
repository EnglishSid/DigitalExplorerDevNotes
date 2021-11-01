# Digital Insights R3

Target : Update the existing insights module to provide

1. Timeline of top trends - min count of 3
1. Cluster of top trends
1. Timeline of focus trends - min count of 3
1. Cluster of top trends

- Secondary requirement : Counts of roadmaps and ideas should adjust based on filters


---
## Time segments
The roadmaps can be configured to support between 3 and 7 time segments (numbered 0-6 within the database), irrespective of the configuration the timeline reports should position all times in 3 areas

1. Near term
1. Mid term
3. Long Term

### Rules for time segment mapping

#### 3 Segment roadmaps
**No changes required**

#### 4 Segment roadmaps
|Segment|Reporting Segment
|---|---|
|0|Near
|1|Mid
|2|Mid
|3|Long


#### 5 Segment roadmaps
|Segment|Reporting Segment
|---|---|
|0|Near
|1|Near
|2|Mid
|3|Mid
|4|Long


#### 6 Segment roadmaps
|Segment|Reporting Segment
|---|---|
|0|Near
|1|Near
|2|Mid
|3|Mid
|4|Long
|5|Long


#### 7 Segment roadmaps

|Segment|Reporting Segment
|---|---|
|0|Near
|1|Near
|2|Near
|3|Near
|4|Mid
|5|Mid
|6|Long


---

## Refactoring scripts

### 7 > 3

~~~
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:6})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=2
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:5})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:4})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:3})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:2})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:1})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:0})
WHERE NOT (ia)-[:CONFIGURES]->(:AgendaSegments)
set cd.reportingSegment=0
~~~

### Existing agendas with configurations

- total to adjust 13

~~~
//3's  5 agendas
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:0}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_0='Short Term' or as.segment_0='Pivot'
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:1}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_0='Short Term' or as.segment_0='Pivot'
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:2}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_0='Short Term' or as.segment_0='Pivot'
set cd.reportingSegment=2
~~~



~~~
//5 2 agenda

match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:0}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_4='3+ Years' or as.segment_4='Year 5' 
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:1}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_4='3+ Years' or as.segment_4='Year 5' 
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:2}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_4='3+ Years' or as.segment_4='Year 5' 
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:3}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_4='3+ Years' or as.segment_4='Year 5' 
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:4}),(ia)-[:CONFIGURES]->(as:AgendaSegments)
where as.segment_4='3+ Years' or as.segment_4='Year 5' 
set cd.reportingSegment=2
~~~

~~~
//STD 7 4 agendas
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:6}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=2
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:5}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:4}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=1
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:3}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:2}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:1}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=0
with count(*) as dummy
match (ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor {segment:0}),(ia)-[:CONFIGURES]->(as:AgendaSegments {segment_6:'3+ Years'})
set cd.reportingSegment=0
~~~