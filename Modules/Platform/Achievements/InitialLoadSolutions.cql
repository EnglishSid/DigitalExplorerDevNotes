
//clean-up 
match (p)-[r:ASSIGNED {role:'Editor'}]->(s)
delete r

//**********************************
//***  GENERAL 

//1st Solution
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'OnboardSolutions'})
WITH p,count(r) as counter, a
MERGE (p)-[:HAS {counter:counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution),(p)-[r2:HAS]->(a:Achievement {name:'OnboardSolutions'})
SET r2.creationDate=s.creationDate
with count(*) as dummy
//5th Solution

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'Journeyman'})
WITH p,count(r) as counter, a
WHERE counter > 5
MERGE (p)-[:HAS {counter:counter}]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution),(p)-[r2:HAS]->(a:Achievement {name:'Journeyman'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//10th Solution

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'Master'})
WITH p,count(r) as counter, a
WHERE counter > 10
MERGE (p)-[:HAS {counter:counter}]->(a)

with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution),(p)-[r2:HAS]->(a:Achievement {name:'Master'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Partner
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Partner'}),(a:Achievement {name:'Friend'})
MERGE (p)-[:HAS]->(a)

with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Partner'}),(p)-[r2:HAS]->(a:Achievement {name:'Friend'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Method
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Method'}),(a:Achievement {name:'Method'})
MERGE (p)-[:HAS]->(a)

with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Method'}),(p)-[r2:HAS]->(a:Achievement {name:'Method'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Innovator
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(bt:BusinessTrend),(a:Achievement {name:'Innovator'})
MERGE (p)-[:HAS]->(a)

with count(*) as dummy
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(tt:TechnologyTrend),(a:Achievement {name:'Innovator'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy

//step 3
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(bt:BusinessTrend),(p)-[r2:HAS]->(a:Achievement {name:'Innovator'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//step 4
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(tt:TechnologyTrend),(p)-[r2:HAS]->(a:Achievement {name:'Innovator'})
SET r2.creationDate=s.creationDate

//**********************************
//***  OFFERING FAMILIES 

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'Family'})
MERGE (p)-[:HAS]->(a)

with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'Family'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family Analytics

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyAnalytics'}),
(f)--(s2:Solution)--(p2:Practice{name:'Analytics'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyAnalytics'}),
(f)--(s2:Solution)--(p2:Practice{name:'Analytics'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Family Application Services

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyApplicationServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Application Services'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyApplicationServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Application Services'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family Business Process Services
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyBPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Business Process Services'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyBPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Business Process Services'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family Cloud and Platform Services
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyCPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cloud and Platform Services'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyCPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cloud and Platform Services'})
SET r2.creationDate=s.creationDate
with count(*) as dummy
with count(*) as dummy


//Family Security
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilySecurity'}),
(f)--(s2:Solution)--(p2:Practice{name:'Security'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilySecurity'}),
(f)--(s2:Solution)--(p2:Practice{name:'Security'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family Workplace and Mobility
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyWorkplace'}),
(f)--(s2:Solution)--(p2:Practice{name:'Workplace and Mobility'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyWorkplace'}),
(f)--(s2:Solution)--(p2:Practice{name:'Workplace and Mobility'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family Cross-Offering Solutions
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyCross-Offering'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cross-Offering Solutions'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyCross-Offering'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cross-Offering Solutions'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Family Consulting

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyConsulting'}),
(f)--(s2:Solution)--(p2:Practice{name:'Consulting'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyConsulting'}),
(f)--(s2:Solution)--(p2:Practice{name:'Consulting'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family Enterprise and Cloud Apps
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyCloudApps'}),
(f)--(s2:Solution)--(p2:Practice{name:'Enterprise and Cloud Apps'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyCloudApps'}),
(f)--(s2:Solution)--(p2:Practice{name:'Enterprise and Cloud Apps'})
SET r2.creationDate=s.creationDate
with count(*) as dummy



//Family Apps Services and Program Excellence
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyAppsServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Apps Services and Program Excellence'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyAppsServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Apps Services and Program Excellence'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family IS&S Insurance
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyInsurance'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Insurance'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyInsurance'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Insurance'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Family IS&S Healthcare & Life Sciences
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyHealthcare'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Healthcare & Life Sciences'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyHealthcare'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Healthcare & Life Sciences'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Family IS&S Banking
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyBanking'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Banking'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyBanking'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Banking'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Family IS&S Travel and Transportation
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyTravel'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Travel and Transportation'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyTravel'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Travel and Transportation'})
SET r2.creationDate=s.creationDate


//**********************************
//***  INDUSTRIES 

//Industry Banking & Capital Markets

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Banking & Capital Markets'}),(a:Achievement {name:'SolutionIndustrialistBanking'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Banking & Capital Markets'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistBanking'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Industry Communications, Media & Entertainment
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Communications, Media & Entertainment'}),(a:Achievement {name:'SolutionIndustrialistCommunications'})
MERGE (p)-[:HAS]->(a)

with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Communications, Media & Entertainment'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistCommunications'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Industry Consumer Industries & Retail

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Consumer Industries & Retail'}),(a:Achievement {name:'SolutionIndustrialistConsumer'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Consumer Industries & Retail'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistConsumer'})
SET r2.creationDate=s.creationDate
with count(*) as dummy



//Industry Energy
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Energy'}),(a:Achievement {name:'SolutionIndustrialistEnergy'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Energy'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistEnergy'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Industry Healthcare & Life Sciences

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Healthcare & Life Sciences'}),(a:Achievement {name:'SolutionIndustrialistHealthcare'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Healthcare & Life Sciences'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistHealthcare'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Industry Public Sector

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Public Sector'}),(a:Achievement {name:'SolutionIndustrialistPublicSector'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Public Sector'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistPublicSector'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Industry Travel & Transportation
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Travel & Transportation'}),(a:Achievement {name:'SolutionIndustrialistTravel'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Travel & Transportation'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistTravel'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Industry Manufacturing
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Manufacturing'}),(a:Achievement {name:'SolutionIndustrialistManufacturing'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Manufacturing'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistManufacturing'})
SET r2.creationDate=s.creationDate
with count(*) as dummy

//Industry Pan Industry
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Pan Industry'}),(a:Achievement {name:'SolutionIndustrialistPanIndustry'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Pan Industry'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistPanIndustry'})
SET r2.creationDate=s.creationDate
with count(*) as dummy


//Industry Insurance
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Insurance'}),(a:Achievement {name:'SolutionIndustrialistInsurance'})
MERGE (p)-[:HAS]->(a)
with count(*) as dummy
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Insurance'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistInsurance'})
SET r2.creationDate=s.creationDate
