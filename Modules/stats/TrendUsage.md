



~~~
//Trends referenced in Workspaces
match (bt:BusinessTrend)-[r]-(ws:Workspace) 
return bt.name, count(r) as occurrence 
order by occurrence desc
~~~


~~~
///Trends referenced in Roadmaps
match (bt:BusinessTrend)-[r]-(cd:ClientDisruptor)--(cvc:ClientValueChain)--(ia:InnovationAgenda)
return bt.name, count(r) as occurrence 
order by occurrence desc
~~~


~~~
//TRENDS NOT REFERENCED in Workspaces
match (bt:BusinessTrend)
WHERE NOT (bt)--(:Workspace) 
return bt.name
~~~


~~~
/// TRENDS NOT REFERENCED IN ROADMAPS
match (bt:BusinessTrend)
WHERE NOT (bt)--(:ClientDisruptor)--(:ClientValueChain)--(:InnovationAgenda)
return bt.name
~~~

~~~
//TRENDS NOT REFERENCED in Solutions
match (bt:BusinessTrend)
WHERE NOT (bt)--(:Solution) 
return bt.name
~~~