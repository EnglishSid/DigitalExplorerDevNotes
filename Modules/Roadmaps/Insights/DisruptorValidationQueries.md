~~~
//count of disruptors
match (i:Industry)--(si:SubIndustry)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend)
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for an industry
match (i:Industry)--(si:SubIndustry)--( a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend)
where i.name='Energy'
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for a region
match (r:Region)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend)
where r.name='UKIIMEA'
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for a region and Industry
match (r:Region)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend),(i:Industry)--(si:SubIndustry)--(a)
where r.name='UKIIMEA' AND i.name='Banking & Capital Markets'
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for an internal program
MATCH (ip:DXCInternalProgram)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend)
where ip.name='Digital Transformation Wave 2'
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for an internal program and an industry
MATCH (ip:DXCInternalProgram)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend),
(a)--(si:SubIndustry)--(i:Industry)
where ip.name='Digital Transformation Wave 2' and i.name='Energy'
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for an internal program and an industry and a region
MATCH (ip:DXCInternalProgram)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend),
(a)--(si:SubIndustry)--(i:Industry),(a)--(r:Region)
where ip.name='Digital Transformation Wave 2' and i.name='Energy' and r.name='UKIIMEA'
return trend.name, count(trend) order by count(trend) desc
~~~

~~~
//count of disruptors for a named account
MATCH (a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend)
where a.name='BP PLC'
return trend.name, count(trend) order by count(trend) desc
~~~
**This one should block all other filters apart from programs**

~~~
//count of disruptors for a named Person
MATCH (p:Person)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[:SPECIALIZES]->(trend)
where p.name='Andrew Dare'
return trend.name, count(trend) order by count(trend) desc
~~~
**user should still be able to filter based on industry, region and program**
