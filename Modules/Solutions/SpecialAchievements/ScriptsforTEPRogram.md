~~~
MERGE (a:Achievement {name:'TechnicalExcellence2018Winner', shortName:'Technical Excellence 2018 Winner', description:'Winner of the DXC Technical Excellence 2018 award', badgeImageURL:'assets/images/badges/tc18Winner.png', module:'Solutions', order:'50'})
with a
MATCH (ma:META_AchievementType {name:'Solution'})
with a,ma
MERGE (a)-[:ofType]->(ma)
return a,ma
~~~

~~~
MERGE (a:Achievement {name:'TechnicalExcellence2018', shortName:'Technical Excellence 2018', description:'Submitted a solution for DXC Technical Excellence 2018', badgeImageURL:'assets/images/badges/tc18.png', module:'Solutions', order:'50'})
with a
MATCH (ma:META_AchievementType {name:'Solution'})
with a,ma
MERGE (a)-[:ofType]->(ma)
return a,ma
~~~

~~~
MERGE (a:Achievement {name:'TechnicalExcellence2019', shortName:'Technical Excellence 2019', description:'Submitted a solution for DXC Technical Excellence 2019', badgeImageURL:'assets/images/badges/tc19.png', module:'Solutions', order:'50'})
with a
MATCH (ma:META_AchievementType {name:'Solution'})
with a,ma
MERGE (a)-[:ofType]->(ma)
return a,ma
~~~

~~~
MERGE (a:Achievement {name:'TechnicalExcellence2019Winner', shortName:'Technical Excellence 2019 Winner', description:'Winner of the DXC Technical Excellence 2019 award', badgeImageURL:'assets/images/badges/tc19Winner.png', module:'Solutions', order:'50'})
with a
MATCH (ma:META_AchievementType {name:'Solution'})
with a,ma
MERGE (a)-[:ofType]->(ma)
return a,ma
~~~


## Assign the award

**Get the right creation date**

- for the first badge it's the creation date
- for the winner badge it's the announcement date

https://www.fileformat.info/tip/java/date2millis.htm 


~~~
///TC2018 Contributor
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-(t:Tag {name:'Technical Excellence 2018'})
where r.role <>'Editor'
with p,s
match (a:Achievement {name:'TechnicalExcellence2018'})
MERGE (p)-[r:HAS  {creationDate:s.creationDate}]->(a)
return p,a
~~~

~~~
///TC2018 Winner
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-(t:Tag {name:'2018 Awards for Technical Excellence Winner'})
where r.role <>'Editor'
with p,s
match (a:Achievement {name:'TechnicalExcellence2018Winner'})
MERGE (p)-[r:HAS  {creationDate:1522281600000}]->(a)
return p,a
~~~

~~~
///TC2019 Contributor
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-(t:Tag {name:'Technical Excellence 2019'})
where r.role <>'Editor'
with p,s
match (a:Achievement {name:'TechnicalExcellence2019'})
MERGE (p)-[r:HAS  {creationDate:s.creationDate}]->(a)
return p,a
~~~

~~~
///TC2019 Winner
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-(t:Tag {name:'Technical Excellence 2019 Winner'})
where r.role <>'Editor'
with p,s
match (a:Achievement {name:'TechnicalExcellence2019Winner'})
MERGE (p)-[r:HAS  {creationDate:s.creationDate}]->(a)
return p,a
~~~