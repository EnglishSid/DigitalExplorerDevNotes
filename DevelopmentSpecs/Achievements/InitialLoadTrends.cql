
//**********************************
//***  GENERAL 

//1st Trend
MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink),(a:Achievement {name:'OnboardTrends'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink),(p)-[r2:HAS]->(a:Achievement {name:'OnboardTrends'})
SET r2.creationDate=r.createDate
return p,a

//10th Trend

MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink),(a:Achievement {name:'ThoughtLeader'})
WITH p,count(r) as Counter, a
WHERE Counter > 10
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink),(p)-[r2:HAS]->(a:Achievement {name:'ThoughtLeader'})
SET r2.creationDate=r.createDate
return p,a

//Technology Trend
MATCH  (p:Person)-[r:CREATED]->(tt:TechnologyTrend),(a:Achievement {name:'TrendTechnologist'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(tt:TechnologyTrend),(p)-[r2:HAS]->(a:Achievement {name:'TrendTechnologist'})
SET r2.creationDate=r.createDate
return p,a




//**********************************
//***  INDUSTRIES 

//Industry Banking & Capital Markets

MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Banking & Capital Markets'}),(a:Achievement {name:'TrendIndustrialistBanking'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Banking & Capital Markets'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistBanking'})
SET r2.creationDate=r.createDate
return p,a


//Industry Communications, Media & Entertainment
MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Communications, Media & Entertainment'}),(a:Achievement {name:'TrendIndustrialistCommunications'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Communications, Media & Entertainment'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistCommunications'})
SET r2.creationDate=r.createDate
return p,a

//Industry Consumer Industries & Retail

MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Consumer Industries & Retail'}),(a:Achievement {name:'TrendIndustrialistConsumer'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Consumer Industries & Retail'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistConsumer'})
SET r2.creationDate=r.createDate
return p,a



//Industry Energy
MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Energy'}),(a:Achievement {name:'TrendIndustrialistEnergy'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Energy'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistEnergy'})
SET r2.creationDate=r.createDate
return p,a

//Industry Healthcare & Life Sciences

MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Healthcare & Life Sciences'}),(a:Achievement {name:'TrendIndustrialistHealthcare'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Healthcare & Life Sciences'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistHealthcare'})
SET r2.creationDate=r.createDate
return p,a


//Industry Public Sector

MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Public Sector'}),(a:Achievement {name:'TrendIndustrialistPublicSector'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Public Sector'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistPublicSector'})
SET r2.creationDate=r.createDate
return p,a


//Industry Travel & Transportation
MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Travel & Transportation'}),(a:Achievement {name:'TrendIndustrialistTravel'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Travel & Transportation'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistTravel'})
SET r2.creationDate=r.createDate
return p,a


//Industry Manufacturing
MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Manufacturing'}),(a:Achievement {name:'TrendIndustrialistManufacturing'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Manufacturing'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistManufacturing'})
SET r2.creationDate=r.createDate
return p,a

//Industry Insurance
MATCH  (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Insurance'}),(a:Achievement {name:'TrendIndustrialistInsurance'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:CREATED]->(btl:BusinessTrendLink)--(ba:BusinessArea)--(si:SubIndustry)--(I:Industry {name:'Insurance'}),(p)-[r2:HAS]->(a:Achievement {name:'TrendIndustrialistInsurance'})
SET r2.creationDate=r.createDate
return p,a

