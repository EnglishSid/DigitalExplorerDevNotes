## push creation date to modified date
## Feb 2020

~~~
MATCH (n:Solution) WHERE n.lastModificationDate IS NULL SET n.lastModificationDate = n.creationDate
~~~
