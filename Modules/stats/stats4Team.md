# base queries to generate usage report for a group of users

## Solutions

~~~
match (p:Person)-[:REPORTS_TO]->(p2:Person {name:'Sukhbinder Gill'})
optional match (p)-[r1:ASSIGNED]-(s:Solution)
return p.name,p.lastLoginDate,  count(r1) as SolutionCount
~~~


## Playbooks
match (p:Person)-[:REPORTS_TO]->(p2:Person {name:'Sukhbinder Gill'})
optional match (p)-[r1]-(pbs:PlaybookShelf)-[r2]-(pb:Playbook)
return p.name,count(r2) as Counter

## Workspaces
match (p:Person)-[:REPORTS_TO]->(p2:Person {name:'Sukhbinder Gill'})
optional match (p)-[r1]-(wsg:WorkspaceGroup)-[r2]-(ws:Workspace)
return p.name, count(r2) as counter

## Roadmaps
match (p:Person)-[:REPORTS_TO]->(p2:Person {name:'Sukhbinder Gill'})
optional match (p)-[r1]-(ia:InnovationAgenda)
return p.name,count(r1) as Counter

## Trends
match (p:Person)-[:REPORTS_TO]->(p2:Person {name:'Sukhbinder Gill'})
optional match (p)-[r1:CREATED|MODIFIED]-(btl:BusinessTrendLink)
return p.name,count(r1) as Counter

