# Orphaned queries



~~~
MATCH (p:Person)--(c:Company {name:'DXC Technology'}) 
WHERE p.employeeStatus="na"
return p
~~~