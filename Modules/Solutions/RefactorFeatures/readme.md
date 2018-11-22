# Feature refactoring NOv 2018

Relates to : https://jira.csc.com/browse/DE-339

---

refactor scripts
Dataset -> capability
Method -> capability
Partner -> capability


~~~
match (f:Feature)-[r]-(ft:FeatureCategory {name:'Dataset'})
match (nft:FeatureCategory {name:'Capability'})
merge (f)-[r2:OFCATEGORY]->(nft)
delete r
return f,nft
~~~
~~~
match (f:Feature)-[r]-(ft:FeatureCategory {name:'Method'})
match (nft:FeatureCategory {name:'Capability'})
merge (f)-[r2:OFCATEGORY]->(nft)
delete r
return f,nft
~~~
~~~
match (f:Feature)-[r]-(ft:FeatureCategory {name:'Partner'})
match (nft:FeatureCategory {name:'Capability'})
merge (f)-[r2:OFCATEGORY]->(nft)
delete r
return f,nft
~~~

## Components

~~~
LOAD csv with headers from "file:///features.csv" AS featuresCSV
match (f:Feature {name:featuresCSV.fname})-[r]-(ft:FeatureCategory)
delete r
with featuresCSV,f
merge (f)-[r2:OFCATEGORY]->(nft:FeatureCategory{name:featuresCSV.type})
with featuresCSV,f
set f.description=featuresCSV.fdescription
with featuresCSV,f
match (f)-[r3]-(:TechnologyGroup)
delete r3
match (tg:TechnologyGroup {name:featuresCSV.tgname})
merge (f)-[r4:REALIZEDBY]->(tg)
return f,tg
~~~

---

# Find features within a category

