~~~
//Shareathon achievement
MERGE (a:Achievement {name:'Shareathon2018', shortName:'DXC Shareathon 2018', description:'Submitted a solution for Shareathon 2018', badgeImageURL:'assets/images/badges/shareathon2018.png', module:'Solutions', order:'50'})
with a
MATCH (ma:META_AchievementType {name:'Solution'})
with a,ma
MERGE (a)-[:ofType]->(ma)
return a,ma
~~~

~~~
//Shareathon Winners achievement
MERGE (a:Achievement {name:'Shareathon2018Winner', shortName:'DXC Shareathon 2018 Winner', description:'Winner of the DXC Shareathon DXC award', badgeImageURL:'assets/images/badges/shareathon2018Winner.png', module:'Solutions', order:'50'})
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
///Shareathon Contributor
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-(t:Tag {name:'Shareathon 2018'})
where r.role <>'Editor'
with p,s
match (a:Achievement {name:'Shareathon2018'})
MERGE (p)-[r:HAS  {creationDate:s.creationDate}]->(a)
return p,a
~~~

~~~
///Shareathon Winner
match (p:Person)-[r:ASSIGNED]-(s:Solution)-[:DESCRIBEDBY]-(t:Tag {name:'Shareathon 2018 Winner'})
where r.role <>'Editor'
with p,s
match (a:Achievement {name:'Shareathon2018Winner'})
MERGE (p)-[r:HAS  {creationDate:1522281600000}]->(a)
return p,a
~~~
