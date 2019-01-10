# Interim Dataload from Azure AD Extract

`userPrincipalName,displayName,companyName,country`

1. match against **userPrincipalName**
1. merge record
1. load again and add `inAD` property - will also us to view who is no longer in DXC
1. load again and add Country node


### 1st Loading

~~~
//Updating existing Person nodes
LOAD csv with headers from "file:///hr.csv" as DXCHR
MATCH (p:Person {email:DXCHR.userPrincipalName})
WITH p
SET p.inAD='Yes'
~~~

~~~
/// Load new nodes and map to DXC Company node
MATCH (c:Company{name:'DXC Technology'}) 
WITH  c
LOAD csv with headers from "file:///hr.csv" as DXCHR
MERGE (p:Person {email:DXCHR.userPrincipalName, name:DXCHR.FullName, inAD:'Yes'})-[:REGISTERED_TO]->(c)
~~~


**Now to look at DXC People with no AD entry**

~~~
match (p:Person)--(r:Role {name:'DXCEmployee'})
where p.inAD is null
return p
~~~

**what do we do with these users?**