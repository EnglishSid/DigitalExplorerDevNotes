# How to find and merge duplicate trends

## Technology Trends > Business Trend


### Find the duplicates
~~~
match (tt:TechnologyTrend),(bt:BusinessTrend)
where tt.name=bt.name
return tt.name
~~~

### Remap solutions



### Remap playbooks


### Remap roadmaps

~~~
//Remap against a named trend
match (tt:TechnologyTrend {name:'Augmented Reality'})<-[r:SPECIALIZES]-(cd:ClientDisruptor)-[r2]-(cvc:ClientValueChain), 
(bt:BusinessTrend {name:'Augmented Reality'})
MERGE (bt)<-[r3:SPECIALIZES]-(cd)
return tt,cd,cvc,bt
~~~

### IDEAS!


~~~
//delete the technology mapping
match (tt:TechnologyTrend {name:'Augmented Reality'})<-[r:SPECIALIZES]-(cd:ClientDisruptor)-[r2]-(cvc:ClientValueChain)
delete r
~~~


### clean-up

~~~
//WorkspaceNote
match (tt:TechnologyTrend {name:'Augmented Reality'})--(wn:WorkspaceNote)
detach delete wn
~~~


Attachment


#### delete the actual trend

~~~
match (tt:TechnologyTrend {name:'Augmented Reality'})
detach delete tt
~~~