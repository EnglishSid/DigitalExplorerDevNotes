Support Help Center and Ticket System (login required):
https://support.neo4j.com/hc
Enterprise Downloads (login required):
https://support.neo4j.com/hc/articles/203307636
Training Resources:
http://neo4j.com/graphacademy/
Documentation:
http://neo4j.com/docs/




|Instance|User|Pass
|----|----|----
|Dev	|neo4j	|DE.GraphDXC17
|ITG	|neo4j	|DE.GraphDXC17
|Prod	|neo4j	|DE.GraphDXC17!


---

# Useful Queries


Users who have logged in

~~~~
MATCH (p:Person)
WHERE p.lastLoginDate IS NOT NULL
CALL apoc.date.format(p.lastLoginDate, "ms", 'yyyy/MM/dd HH:mm:ss') YIELD value AS lastLogin
RETURN p.name, lastLogin
ORDER BY p.lastLoginDate DESC
~~~~

**Delete node by id**
~~~~
MATCH (s)
WHERE ID(s) = 386150
detach delete s
~~~~

Create a person record 

~~~
CREATE (p:Person {name:'<value>' ,email:'<value>'})
RETURN p
~~~