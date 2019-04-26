# query to return the WWS dataset from DE 

### Simple query

~~~
MATCH (s:Solution)--(f:Feature),(s:Solution)--(st:META_SolutionType {name:"DXC Offering Family"}),(s:Solution)--(p:Practice),(f:Feature)--(fc:FeatureCategory {name:"Offering"})
RETURN p.name as offeringFamily, s.name as majorOffering, f.name as subOffering
ORDER BY offeringFamily, majorOffering, subOffering
~~~

### Major offerings with contacts

~~~
MATCH (p:Practice)--(s:Solution)--(st:META_SolutionType {name:"DXC Offering Family"})
OPTIONAL MATCH (s)-[r:ASSIGNED]-(p2:Person)
RETURN distinct p.name as offeringFamily, s.name as majorOffering,s.description as OfferingDescription,p2.name as Contact, p2.email as ContactEmail, r.role as ContactRole
ORDER BY offeringFamily, majorOffering
~~~
