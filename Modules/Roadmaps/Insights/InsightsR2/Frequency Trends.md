1. Frequency of trends within road maps (no time dimension)
~~~
MATCH (i:Industry)--(si:SubIndustry)--(a:Account)--(ia:InnovationAgenda)--(ci:ClientValueChain)--(cd:ClientDisruptor)
with collect(ci.name) as col,count(ci) as count1,cd.name as dis, count(DISTINCT ci) AS total
where count1>1
RETURN col,toFloat(count(col))/toFloat(total) *100 as frequency,count1 order by count1 desc
~~~

2. Frequency of trends within (with time segments-near,mid and Long)
~~~
match (i:Industry)--(si:SubIndustry)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)-[s:SPECIALIZES]->(trend) 
				with  trend.name as tname,cd.segment as seg, count(cd.name) as total
				where total>1
				return tname ,seg,total
order by  total DESC
~~~

3. Frequency of trends within strategic initiatives
~~~
MATCH (ci:ClientStrategicInitiative)--(cd:ClientDisruptor)
with collect(ci.name) as col,count(ci) as count1,cd.name as dis, count(DISTINCT ci) AS total
RETURN col,toFloat(count(col))/toFloat(total) *100 as frequency
~~~

4. Frequency of trends alogn with count of ideas (one-one / one-many)
