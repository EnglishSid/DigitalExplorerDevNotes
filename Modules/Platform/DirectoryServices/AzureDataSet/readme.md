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


----

~~~
LOAD csv with headers from "file:///hr.csv" as ukct
MATCH (p:Person{email:ukct.userPrincipalName})
with p
OPTIONAL match (s:Solution) where s.createdBy=p.email
OPTIONAL match (s:Solution)<-[rs:ASSIGNED]-(p)
OPTIONAL match (btl:BusinessTrendLink)<-[r:CREATED]-(p)
OPTIONAL match (tt:TechnologyTrend)<-[:CREATED]-(p)
OPTIONAL match (ia:InnovationAgenda)<-[:ASSIGNED]-(p)
OPTIONAL match (ws:Workspace)<-[:MEMBER_OF]-(p)
OPTIONAL match (p)-[:HAS]->(a:Achievement)
return 
	ID(p) as id,
	p.name as name,
    p.lastLoginDate as LastLoginDate,
    count(distinct(s)) as submittedSolutions,
    count(distinct(rs)) as SolutionContact,
    count(distinct(btl)) as createdBusinessTrends,
    count(distinct(tt))as createdTechnologyTrends,
    count(distinct(ia))as HasInnovationAgenda,
    count(distinct(ws))as WorkspaceMember,
    count(distinct(a)) as HasAchievements
ORDER BY p.name
~~~

replace null with zero
sum across the row, if still 0 ok delete

~~~
LOAD csv with headers from "file:///peoplefix.csv" as nodedata 
MATCH (s) 
WHERE ID(s) = toInteger(nodedata.id)
detach delete s
~~~