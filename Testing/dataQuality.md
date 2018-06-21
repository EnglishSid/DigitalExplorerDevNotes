Trend name = Trend Description
~~~
MATCH (bt:BusinessTrend)-[ASSIGNED]->(btl:BusinessTrendLink)<-[ASSIGNED_VIA]-(ba:BusinessArea)-[VALUEOF]->(si:SubIndustry)
WHERE bt.name=bt.description
RETURN bt.name, bt.description, ba.name,si.name
~~~
August 2017 Count: 1408 
Feb 2018 Count:1096



Industry Description = Trend Description
~~~~
MATCH  (bt:BusinessTrend)-[ASSIGNED]->(btl:BusinessTrendLink)<-[ASSIGNED_VIA]-(ba:BusinessArea)-[VALUEOF]->(si:SubIndustry)
WHERE  bt.description=btl.description
RETURN bt.name, bt.description, btl.description, ba.name,si.name
~~~~

August 2017 Count: 120
Feb 2018 Count:78

Trends with the same name
~~~~
MATCH (n:BusinessTrend) with n.name as name, collect(n) as nodelist, count(*) as count where count > 1 return name, count
~~~~

August 2017 count: 0