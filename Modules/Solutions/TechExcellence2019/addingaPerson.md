
(c)<-[:REGISTERED_TO]-(p)


match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Kory Hubbard', email:'kory.hubbard@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Carrie Rangeen', email:'carrie.rangeen@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Vishal Kamalakaran', email:'vishal.kamalakaran@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Chris Janssen', email:'chris.janssen@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Troy Curtis', email:'tcurtis3@csc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Charles Braden', email:'charles.braden@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)


Hubbard, Kory <>; ,  <>; ,  <>; ,  <>; ,  <>; ,  <>