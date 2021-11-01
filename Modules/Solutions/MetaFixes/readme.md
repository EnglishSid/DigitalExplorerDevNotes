# Meta data fixes

in some cases live data nodes need to be created manually following updates to the meta dataset

## SubTypes for solution


`(SolutionType)-:[SubType]-(SolutionSubType)


### If both the Solution Type and SubType are new

~~~
merge (st:SolutionType {name:'Partners'})-[:SubType]->(sst:SolutionSubType {name:'Google Cloud'}) return st,sst
~~~

**ONLY RUN IT ONCE**

### If the solution type exists and only the subType is new

~~~
MATCH (st:SolutionType {name:'Partners'})
with st
MERGE (st)-[:SubType]->(sst:SolutionSubType {name:'Google Cloud'}) 
return st,sst
~~~