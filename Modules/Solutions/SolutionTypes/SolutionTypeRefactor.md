# Revised Solution Type Model

*Initial Release*


|Tier 1| Tier 2|
|---|---|
|Accelerated Solution Developer|Concept
|Accelerated Solution Developer|Prototype
|Accelerated Solution Developer|Pilot
|Accelerated Solution Developer|Production
|Standard Solution|DXC Solution
|Standard Solution|DXC Demo
|Standard Solution|DXC Labs
|Reference DataSets|DXC Offering Family
|Reference DataSets|Partner Capability
|Reference DataSets|DXC Reference Architecture


## Existing Data mappings


|Existing|new Tier 1-2 mapping
|---|---|
|DXC Solution|Standard Solution - DXC Solution
|DXC Demo|Standard Solution - DXC Demo
|DXC Reference Architecture|Reference DataSets  - DXC Reference Architecture
|DXC Offering Family|Reference DataSets  - DXC Offering Family
|Partner Capability|Reference DataSets - Partner Capability
|DXC Labs|Standard Solution - DXC Labs

## Creation Script

~~~
CREATE (st:META_SolutionType {name:'Accelerated Solution Development'})
WITH st
MERGE (st)-[:SubType]->(sst1:META_SolutionSubType {name:'Concept'})
MERGE (st)-[:SubType]->(sst2:META_SolutionSubType {name:'Prototype'})
MERGE (st)-[:SubType]->(sst3:META_SolutionSubType {name:'Pilot'})
MERGE (st)-[:SubType]->(sst4:META_SolutionSubType {name:'Production'})
with count(*) as dummy
CREATE (st:META_SolutionType {name:'Standard Solution'} )
WITH st
MERGE (st)-[:SubType]->(sst1:META_SolutionSubType {name:'DXC Solution'})
MERGE (st)-[:SubType]->(sst2:META_SolutionSubType {name:'DXC Demo'})
MERGE (st)-[:SubType]->(sst3:META_SolutionSubType {name:'DXC Labs'})
with count(*) as dummy
CREATE (st:META_SolutionType {name:'Reference DataSets'} )
WITH st
MERGE (st)-[:SubType]->(sst1:META_SolutionSubType {name:'DXC Offering Family'})
MERGE (st)-[:SubType]->(sst2:META_SolutionSubType {name:'Partner Capability'})
MERGE (st)-[:SubType]->(sst3:META_SolutionSubType {name:'DXC Reference Architecture'})
~~~


## Refactor Script
~~~
//Create the required live nodes (no need for ASD yet)
CREATE (st:SolutionType {name:'Standard Solution'} )
WITH st
MERGE (st)-[:SubType]->(sst1:SolutionSubType {name:'DXC Solution'})
MERGE (st)-[:SubType]->(sst2:SolutionSubType {name:'DXC Demo'})
MERGE (st)-[:SubType]->(sst3:SolutionSubType {name:'DXC Labs'})
with count(*) as dummy
CREATE (st:SolutionType {name:'Reference DataSets'} )
WITH st
MERGE (st)-[:SubType]->(sst1:SolutionSubType {name:'DXC Offering Family'})
MERGE (st)-[:SubType]->(sst2:SolutionSubType {name:'Partner Capability'})
MERGE (st)-[:SubType]->(sst3:SolutionSubType {name:'DXC Reference Architecture'})
~~~

~~~
MATCH (s:Solution)--(st:META_SolutionType {name:'DXC Solution'}),(sst:SolutionSubType {name:'DXC Solution'})
WITH s,sst
MERGE (s)-[:ofType]->(sst)
with count(*) as dummy
MATCH (s:Solution)--(st:META_SolutionType {name:'DXC Demo'}),(sst:SolutionSubType {name:'DXC Demo'})
WITH s,sst
MERGE (s)-[:ofType]->(sst)
with count(*) as dummy
MATCH (s:Solution)--(st:META_SolutionType {name:'DXC Labs'}),(sst:SolutionSubType {name:'DXC Labs'})
WITH s,sst
MERGE (s)-[:ofType]->(sst)
with count(*) as dummy
MATCH (s:Solution)--(st:META_SolutionType {name:'DXC Offering Family'}),(sst:SolutionSubType {name:'DXC Offering Family'})
WITH s,sst
MERGE (s)-[:ofType]->(sst)
with count(*) as dummy
MATCH (s:Solution)--(st:META_SolutionType {name:'Partner Capability'}),(sst:SolutionSubType {name:'Partner Capability'})
WITH s,sst
MERGE (s)-[:ofType]->(sst)
with count(*) as dummy
MATCH (s:Solution)--(st:META_SolutionType {name:'DXC Reference Architecture'}),(sst:SolutionSubType {name:'DXC Reference Architecture'})
WITH s,sst
MERGE (s)-[:ofType]->(sst)
~~~
