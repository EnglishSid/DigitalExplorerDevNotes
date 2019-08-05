DEHRDD


EMPLID
NAME
EMPL_STATUS
EMAIL_ADDR
MANAGER_EMAIL


Fixes to the Excel

Include only EMPL_STATUS=A

fix the name

split the name into 2 columns, using `,`
removed any blanks from rows for `NAME` and `NAME2` and `EMAIL_ADDR`


### Loading in Digital Explorer

clean-up scripts

~~~
match (p:Person),(c:Company {name:'DXC Technology'})
where p.email CONTAINS 'dxc.com'
merge (p)-[:REGISTERED_TO]->(c)
~~~


1. Set all dxc employees empl_status as null
2. remove reporting relationship
3. merge in new records and set empl_status
4. reset reporting relationship


#### 1
~~~ 
match (p:Person)--(c:Company {name:'DXC Technology'})
set p.employeeStatus=null
~~~

#### 2
match (p:Person)-[r:REPORTS_TO]-(p2:Person) delete r


#### 3

~~~
LOAD csv with headers from "file:///HRDD.csv" as DEHRDD
MATCH (c:Company {name:'DXC Technology'})
WITH DEHRDD,c
MERGE (p:Person {email:DEHRDD.EMAIL_ADDR})
set p.employeeId=DEHRDD.EMPLID
set p.employeeStatus='A' 
set p.name=DEHRDD.NAME2+' '+DEHRDD.NAME
MERGE (p)-[:REGISTERED_TO]->(c)
~~~



#### 4

~~~
LOAD csv with headers from "file:///HRDD.csv" as DEHRDD
MATCH (p1:Person {email:DEHRDD.EMAIL_ADDR}),(p2:Person {email:DEHRDD.MANAGER_EMAIL})
MERGE (p1)-[:REPORTS_TO]->(p2)
~~~