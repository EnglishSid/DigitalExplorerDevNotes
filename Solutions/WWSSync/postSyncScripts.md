# Data to clean-up on production database after the sync

## remove any Major offerings without a MajorOffering ID

~~~
MATCH (s:Solution)--(st:META_SolutionType {name:"DXC Offering Family"})
where s.majorOfferingId is null
detach delete s
~~~

## SubOffering Clean-up

~~~
MATCH (s:Solution)--(f:Feature)
where f.name = 'Network Services'
detach delete f
~~~

