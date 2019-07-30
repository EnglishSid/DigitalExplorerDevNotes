# How to find and merge duplicate trends

## Technology Trends > Business Trend


### Find the duplicates
~~~
match (tt:TechnologyTrend),(bt:BusinessTrend)
where tt.name=bt.name
return tt.name"IT & OT Convergenc
~~~

~~~
match (tt:TechnologyTrend),(bt:BusinessTrend)
where lower(tt.name)=lower(bt.name)
return tt.name
~~~


### Remap solutions

~~~
match (s:Solution)--(tt:TechnologyTrend {name:'Basic Biometrics'})
optional match (bt:BusinessTrend{name:'Basic Biometrics'})
MERGE (bt)-[:INFLUENCE]->(s)
return s,tt,bt
~~~


### Remap playbooks


### Remap roadmaps

~~~
//Remap against a named trend
match (tt:TechnologyTrend {name:'Basic Biometrics'})<-[r:SPECIALIZES]-(cd:ClientDisruptor)-[r2]-(cvc:ClientValueChain), 
(bt:BusinessTrend {name:'Basic Biometrics'})
MERGE (bt)<-[r3:SPECIALIZES]-(cd)
return tt,cd,cvc,bt
~~~

### IDEAS!


~~~
//delete the technology mapping
match (tt:TechnologyTrend {name:'Basic Biometrics'})<-[r:SPECIALIZES]-(cd:ClientDisruptor)-[r2]-(cvc:ClientValueChain)
delete r
~~~


### clean-up

~~~
//WorkspaceNote
match (tt:TechnologyTrend {name:'Basic Biometrics'})--(wn:WorkspaceNote)
detach delete wn
~~~


Attachment


#### delete the actual trend

~~~
match (tt:TechnologyTrend {name:'Basic Biometrics'})
detach delete tt
~~~