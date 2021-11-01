# Import of master account list



Account
Industry
SubIndustry
Region
Website (new from file)
DXCID (new file file)



**Approach**
- merge into existing node
- set id and website from csv
- reset industry 


~~~
LOAD csv with headers from "file:///accounts.csv" as Accounts
MERGE (a:Account {name:Accounts.Business})
~~~


~~~
LOAD csv with headers from "file:///accounts.csv" as Accounts
MATCH (a:Account {name:Accounts.Business})
SET a.DXCID=Accounts.ID
SET a.website=Accounts.Website
~~~


### Account to region


~~~
LOAD csv with headers from "file:///accounts.csv" as Accounts
MATCH (a:Account {name:Accounts.Business}),(r:Region {name:Accounts.P&LRegion})
MERGE (a)-[:ACCOUNT_IN_REGION]->(r)
~~~


### Account to subIndustry

Account [:ACCOUNT_TO_SUBINDUSTRY] -> (SubIndustry)


Report only includes to Industry level




