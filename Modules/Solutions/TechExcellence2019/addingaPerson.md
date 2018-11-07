
(c)<-[:REGISTERED_TO]-(p)


match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Khoa Dang Do', email:'kdo6@csc.com>'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Liem Trung Huynh', email:'lhuynh24@csc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'', email:'qnguyen35@csc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Minh Ly', email:'mly2@csc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Huu Pham ', email:'hpham21@csc.com'})
merge (p)-[:REGISTERED_TO]->(c)



 <;
 <>;
 <>;
 <>; 
<>