## query to return full WWS dataset

~~~
MATCH (s:Solution)--(f:Feature),(s:Solution)--(st:META_SolutionType {name:"DXC Offering Family"}),(s)--(p:Practice),(f)--(fc:FeatureCategory {name:"Offering"})
RETURN p.name as offeringFamily, s.name as majorOffering, f.name as subOffering
ORDER BY offeringFamily, majorOffering, subOffering
~~~

