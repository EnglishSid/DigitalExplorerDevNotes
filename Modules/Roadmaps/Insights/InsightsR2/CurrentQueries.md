1. list of all trends within all client (account) road maps
~~~
match (a:Account)--(i:InnovationAgenda)--(c:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(abc)
return a.name,cd.name,count(abc)
~~~

2. List of all trends for a named region
~~~
match (r:Region)--(a:Account)--(i:InnovationAgenda)--(c:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(Trend) 
return r.name,a.name,count(Trend)
~~~

3. list of all trends which have been selected into a strategic initiative.
~~~
match (r:Region)--(a:Account)--(i:InnovationAgenda)--(c:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(Trend),(cd)--(ci:ClientStrategicInitiative)
return a.name,Trend.name,count(Trend)
~~~

4. list of all "signals" for a named region

:x: needs to be reviewed
~~~

~~~

5. list of all trends in a roadmap for a named person
~~~
match (P:Person)--(a:Account)--(i:InnovationAgenda)--(c:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(Trend),
(a)--(r:Region)
return r.name, P.name,Trend.name, count(Trend)
~~~