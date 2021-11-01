



## Data cleaning

" to blank
' to blank

Split vendors and customers into 2 csv files


Split files into chunks - customer, contract, vendors
Save as csv AND THEN IMPORT into new files import data and export as CSV



# import scripts


## Vendors

//INDEX
CREATE INDEX ON :Vendor(name)

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///IDCAPIData.csv" as IDCData
MERGE (v:Vendor {name:IDCData.vendorCompanyName})

~~~

parent relationships
~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///vendors.csv" as IDCData
MATCH (vp:Vendor {name:IDCData.vendorParentCompanyName}),(v:Vendor {name:IDCData.vendorCompanyName})
MERGE (v)-[:PARENT]->(vp)
~~~


clean-up parents
~~~
match (v:Vendor)-[r]-(v2:Vendor)
where v.name = v2.name
delete r
~~~


## Customers


//INDEX
CREATE INDEX ON :Customer(name)

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
WITH IDCData WHERE NOT IDCData.customerCompanyName IS NULL
MERGE (c:Customer {name:IDCData.customerCompanyName,employeeCount:IDCData.customerEmployeeCount})
~~~

### customer size

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers4.csv" as IDCData
WITH IDCData WHERE NOT IDCData.companySizeByNoOfEmployees IS NULL
MERGE (cs:CustomerSize {size:IDCData.companySizeByNoOfEmployees})
~~~

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers4.csv" as IDCData
WITH IDCData WHERE NOT IDCData.companySizeByNoOfEmployees IS NULL
MATCH (cs:CustomerSize {size:IDCData.companySizeByNoOfEmployees}),(c:Customer {name:IDCData.customerCompanyName})
MERGE (c)-[:SIZE]->(cs)
~~~


### add description
~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
MATCH (c:Customer {name:IDCData.customerCompanyName})
set c.description=IDCData.
~~~


## parents

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
MATCH (c2:Customer {name:IDCData.customerParentCompanyName}),(c:Customer {name:IDCData.customerCompanyName})
MERGE (c)-[:PARENT]->(c2)
~~~

~~~
match (c:Customer)-[r]-(c2:Customer)
where c.name = c2.name
delete r
~~~

## industry

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers4.csv" as IDCData
WITH IDCData WHERE NOT IDCData.customerSubIndustry IS NULL AND IDCData.customerIndustry IS NULL
MERGE (si:IDCSubindustry {name:IDCData.customerSubIndustry})-[r:PARENT]->(i:IDCIndustry {name:IDCData.customerIndustry})
~~~


## customer 2 industry 

~~~
LOAD csv with headers from "file:///customers.csv" as IDCData
MATCH (c:Customer {name:IDCData.customerCompanyName}),(si:IDCSubindustry {name:IDCData.customerSubIndustry})
MERGE (c)-[:ASSIGNED]->(si)
~~~



## region

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
WITH IDCData WHERE NOT IDCData.geoScopeMacroRegion IS NULL
MERGE (r:IDCRegion {name:IDCData.geoScopeMacroRegion})
~~~

## sub region
~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
WITH IDCData WHERE NOT IDCData.geographicScopeRegion IS NULL
MERGE (sr:IDCSubRegion {name:IDCData.geographicScopeRegion})
~~~


~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
MATCH (sr:IDCSubRegion {name:IDCData.geographicScopeRegion}),(r:IDCRegion {name:IDCData.geoScopeMacroRegion})
MERGE (sr)-[:ASSIGNED]->(r)
~~~

## country

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
MERGE (r:IDCRegion {name:IDCData.geoScopeMacroRegion})
~~~

## customer 2 country
~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///customers.csv" as IDCData
MATCH (r:IDCRegion {name:IDCData.geoScopeMacroRegion}),(c:Customer {name:IDCData.customerCompanyName})
MERGE (c)-[:ASSIGNED]->(r)
~~~

## People at companies

//INDEX
CREATE INDEX ON :CustomerPerson(name)

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///People.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwner IS NULL
MERGE (p:CustomerPerson {name:IDCData.projectOwner})
~~~

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///People.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwner IS NULL
MATCH (p:CustomerPerson {name:IDCData.projectOwner})
set p.title=IDCData.projectOwnerTitle
~~~


~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///People.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwnerII IS NULL
MERGE (p:CustomerPerson {name:IDCData.projectOwnerII})
~~~

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///People.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwnerII IS NULL
MATCH (p:CustomerPerson {name:IDCData.projectOwnerII})
set p.title=IDCData.projectOwnerTitleII
~~~

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///People.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwnerII IS NULL
MATCH (p:CustomerPerson {name:IDCData.projectOwnerII}),(c:Customer{name:IDCData.customerCompanyName})
merge (p)-[:WORKS_AT]->(c)
~~~

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///People.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwner IS NULL
MATCH (p:CustomerPerson {name:IDCData.projectOwner}),(c:Customer{name:IDCData.customerCompanyName})
merge (p)-[:WORKS_AT]->(c)
~~~




## Contracts


//INDEX
CREATE INDEX ON :Contract(cid)


~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///Contracts2.csv" as IDCData
MERGE (c:Contract {cid:IDCData.contractId,baseContractLength:IDCData.baseContractLength,totalContractLength:IDCData.totalContractLength})
~~~


### Contract to Vendor
~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///Contracts2.csv" as IDCData
MATCH (c:Contract {cid:IDCData.contractId}),(v:Vendor {name:IDCData.vendorCompanyName})
MERGE (v)-[:AWARDED]-(c)
~~~



### Contract to Customer
~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///Contracts2.csv" as IDCData
MATCH (c:Contract {cid:IDCData.contractId}),(cu:Customer{name:IDCData.customerCompanyName})
MERGE (cu)-[:ISSUED]-(c)
~~~

### Contract to CustomerPerson

projectOwner

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///Contracts2.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwner IS NULL
MATCH (p:CustomerPerson {name:IDCData.projectOwner}),(c:Contract {cid:IDCData.contractId})
MERGE (p)-[:OWNS]->(c)
~~~

~~~
:auto USING PERIODIC COMMIT 1000
LOAD csv with headers from "file:///Contracts2.csv" as IDCData
WITH IDCData WHERE NOT IDCData.projectOwnerII IS NULL
MATCH (p:CustomerPerson {name:IDCData.projectOwnerII}),(c:Contract {cid:IDCData.contractId})
MERGE (p)-[:OWNS]->(c)
~~~


### descriptions


~~~
LOAD csv with headers from "file:///Book2.csv" as IDCData
match (c:Contract {cid:IDCData.contractId})
set c.dealDescription=IDCData.dealDescription
~~~


~~~
LOAD csv with headers from "file:///Book2.csv" as IDCData
match (c:Customer {cid:IDCData.customerCompanyName})
set c.Description=IDCData.customerDescription
~~~


---

## Connecting to Digital Explorer

### contacts

#### business areas

~~~
match (c:Contract),(ba:BusinessArea)
WHERE toLower(c.dealDescription) contains toLower(ba.name)
MERGE (c)-[:REFERS_TO]->(ba)
~~~

#### Business Trends

~~~
match (c:Contract),(bt:BusinessTrend)
WHERE toLower(c.dealDescription) contains toLower(bt.name)
MERGE (c)-[:REFERS_TO]->(bt)
~~~

#### Technology Trends

~~~
match (c:Contract),(tt:TechnologyTrend)
WHERE toLower(c.dealDescription) contains toLower(tt.name)
MERGE (c)-[:REFERS_TO]->(tt)
~~~


### customers
#### Business Areas

~~~
match (c:Customer),(ba:BusinessArea)
WHERE toLower(c.description) contains toLower(ba.name)
MERGE (c)-[:REFERS_TO]->(ba)
~~~

#### Business Trends

~~~
match (c:Customer),(bt:BusinessTrend)
WHERE toLower(c.description) contains toLower(bt.name)
MERGE (c)-[:REFERS_TO]->(bt)
~~~

#### Technology Trends

~~~
match (c:Customer),(tt:TechnologyTrend)
WHERE toLower(c.description) contains toLower(tt.name)
MERGE (c)-[:REFERS_TO]->(tt)
~~~







