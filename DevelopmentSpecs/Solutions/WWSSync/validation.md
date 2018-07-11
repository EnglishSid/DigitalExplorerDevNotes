## query to return full WWS dataset

~~~
MATCH (s:Solution)--(f:Feature),(s:Solution)--(st:META_SolutionType {name:"DXC Offering Family"}),(s:Solution)--(p:Practice),(f:Feature)--(fc:FeatureCategory {name:"Offering"}),(f:Feature)--(tg:TechnologyGroup),(s)--(si:SubIndustry)--(i:Industry)
RETURN p.name as offeringFamily, s.name as majorOffering, f.name as subOffering, f.description as subOffDescription,tg.name,i.name
ORDER BY offeringFamily, majorOffering, subOffering
~~~



## QuickStarts
~~~
MATCH (s:Solution)--(f:Feature)
where f.name contains 'QuickStart'
detach delete f
~~~


