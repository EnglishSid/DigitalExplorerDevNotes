


~~~
/find the duplicates
match (p:Person),(p2:Person)
where p.name=p2.name AND p.email <> p2.email
return p.name,p.email,p2.email
order by p.name
~~~


~~~
/set the wrong one to an email to be delete
match (p:Person)
where p.email='dan.hushon@dxc.com'
set p.email='tobedeleted'
~~~


~~~
/set the old address to the new email
match (p:Person)
where p.email='dhushon@csc.com'
set p.email='dan.hushon@dxc.com'
~~~


~~~
/WWS mismatches
match (p:Person),(p2:Person)
where p.name=p2.name AND p.email <> p2.email and p.lastLoginDate is null
with p,p2
match (s:Solution)--(p)
MERGE (p2)-[:ASSIGNED {role:'Solution Owner'}]->(s)
return p,s,p2
~~~



match (p:Person {email:'Bob.bodziony@dxc.com'})
detach delete p



~~~
/delete the wrong entries
match (p:Person)
where p.email='tobedeleted'
detach delete p
~~~
