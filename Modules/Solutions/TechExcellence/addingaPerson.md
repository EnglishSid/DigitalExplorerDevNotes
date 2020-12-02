
(c)<-[:REGISTERED_TO]-(p)


match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Nick de la Bedoyere', email:'nick.delabedoyere@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)
with count(*) as dummy
match (c:Company{name:'DXC Technology'}) 
merge (p:Person {name:'Carrie Rangeen', email:'carrie.rangeen@dxc.com'})
merge (p)-[:REGISTERED_TO]->(c)

