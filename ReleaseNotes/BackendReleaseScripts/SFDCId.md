
~~~
MATCH (ci:ClientIdea) WHERE EXISTS(ci.sfdcId)
WITH ci MATCH (sfdcI:SFDCInfo) WHERE NOT sfdcI.opportunityId IN SPLIT(ci.sfdcId, ' ')
FOREACH(sfdcID IN SPLIT (ci.sfdcId, ' ') | 
MERGE (b:SFDCInfo {opportunityId : sfdcID }))
~~~

-------
~~~
MATCH (ci:ClientIdea) WHERE EXISTS(ci.sfdcId)
MATCH (sfdc:SFDCInfo) WHERE ci.sfdcId CONTAINS sfdc.opportunityId AND (sfdc.opportunityId CONTAINS 'OPX' OR sfdc.opportunityId CONTAINS 'http')
MERGE (ci)-[:RELATES_TO]->(sfdc)
~~~
-------

MATCH (sfdc:SFDCInfo) WHERE NOT (sfdc)-[*]-() AND (NOT sfdc.opportunityId CONTAINS 'OPX' OR NOT sfdc.opportunityId CONTAINS 'http') DELETE sfdc