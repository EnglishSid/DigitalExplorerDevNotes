# Overwrite an author

when manually adding a trend on behalf of someone else, the following scripts should be run on the backend


## 100% new trend - add the correct author

~~~
match (bt:BusinessTrend {name:'Single Information Enterprise'})--(btl:BusinessTrendLink),(p:Person {email:'paul.o-hanlon@dxc.com'})
MERGE (p)-[:CREATED {createDate:1567755461669}]->(bt)
MERGE (p)-[:CREATED {createDate:1567755461669}]->(btl)
return bt,p,btl
~~~

- remove the temp author
~~~
match (bt:BusinessTrend {name:'Single Information Enterprise'})--(btl:BusinessTrendLink),
(bt)<-[r:CREATED]-(p:Person {email:'davidstevens@dxc.com'}),
(btl)<-[r2:CREATED]-(p:Person {email:'davidstevens@dxc.com'})
delete r,r2
~~~

---

## Adding a use case to an existing trend

~~~
match (bt:BusinessTrend {name:'Innovation centres'})--(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry {name:'Defence and intelligence'}),(p:Person {email:'paul.o-hanlon@dxc.com'})
MERGE (p)-[:CREATED {createDate:1567755461669}]->(btl)
return bt,p,btl
~~~

~~~
match (bt:BusinessTrend {name:'Innovation centres'})--(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry {name:'Defence and intelligence'}),(btl)<-[r:CREATED]-(p:Person {email:'davidstevens@dxc.com'})
delete r
~~~