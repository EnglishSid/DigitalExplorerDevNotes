# DEHRDD Data Sync

**Note this is currently manual**

Data fields returned from [DXC HRDD System](https://dxcddss-prd.itcs.houston.dxccorp.net/)

:bulb: the request is subscription number #311<br>


EMPLID
NAME
EMPL_STATUS
EMAIL_ADDR
MANAGER_EMAIL


## Fixes to the Excel

Include only EMPL_STATUS=A - removes 140,000 rows.

`:bell: this should be included within the subscription request : Sync with Carl to ensure the approvals go through`


### fix the name

Split the name (B) into 2 columns, using `,` - this is required to change the order from `last, first` to `first, last` when uploading into DE<br>

~~~

- Insert new column (C)

- Select Data > Text to Columns.

- In the Convert Text to Columns Wizard, select Delimited > Next.

- **RENAME COLUMN C to NAME2
~~~



`:bulb: Update the subscription request to return first and last name as separate columns`<br>

### Blank rows
Remove any blanks from rows for `NAME` and `NAME2` and `EMAIL_ADDR`


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
LOAD csv with headers from "file:///DEHRDD.csv" as DEHRDD
MATCH (c:Company {name:'DXC Technology'})
WITH DEHRDD,c
MERGE (p:Person {email:DEHRDD.EMAIL_ADDR})
set p.employeeId=DEHRDD.EMPLID
set p.employeeStatus='A' 
set p.name=DEHRDD.NAME2+' '+DEHRDD.NAME
MERGE (p)-[:REGISTERED_TO]->(c)
~~~

**DO NOT USE THIS ONE YET**
~~~
LOAD csv with headers from "file:///DEHRDD.csv" as DEHRDD
MATCH (c:Company {name:'DXC Technology'}),(r:Role {name:'DXCEmployee})
WITH DEHRDD,c,r
MERGE (p:Person {email:DEHRDD.EMAIL_ADDR})
set p.employeeId=DEHRDD.EMPLID
set p.employeeStatus='A' 
set p.name=DEHRDD.NAME2+' '+DEHRDD.NAME
MERGE (p)-[:REGISTERED_TO]->(c)
MERGE (p)-[:ASSIGNED]->(r)
~~~



#### 4

~~~
LOAD csv with headers from "file:///DEHRDD.csv" as DEHRDD
MATCH (p1:Person {email:DEHRDD.EMAIL_ADDR}),(p2:Person {email:DEHRDD.MANAGER_EMAIL})
MERGE (p1)-[:REPORTS_TO]->(p2)
~~~


#### 5
remove any duplicates (from the workday dataset, keep the Global Pass records)

~~~
match (p:Person),(p2:Person)
where p.email=p2.email and p.name <> p2.name
with p
match (p) where exists(p.employeeId) 
detach delete p
~~~