
//clean-up 
match (p)-[r:ASSIGNED {role:'Editor'}]->(s)
delete r

//**********************************
//***  GENERAL 

//1st Solution
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'OnboardSolutions'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {Counter:Counter}]->(a)

//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution),(p)-[r2:HAS]->(a:Achievement {name:'OnboardSolutions'})
SET r2.creationDate=s.creationDate

//5th Solution

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'Journeyman'})
WITH p,count(r) as Counter, a
WHERE Counter > 5
MERGE (p)-[:HAS {Counter:Counter}]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution),(p)-[r2:HAS]->(a:Achievement {name:'Journeyman'})
SET r2.creationDate=s.creationDate
return p,a

//10th Solution

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'Master'})
WITH p,count(r) as Counter, a
WHERE Counter > 10
MERGE (p)-[:HAS {Counter:Counter}]->(a)

//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution),(p)-[r2:HAS]->(a:Achievement {name:'Master'})
SET r2.creationDate=s.creationDate

//Partner
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Partner'}),(a:Achievement {name:'Friend'})
MERGE (p)-[:HAS]->(a)

//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Partner'}),(p)-[r2:HAS]->(a:Achievement {name:'Friend'})
SET r2.creationDate=s.creationDate


//Method
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Method'}),(a:Achievement {name:'Method'})
MERGE (p)-[:HAS]->(a)

//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Method'}),(p)-[r2:HAS]->(a:Achievement {name:'Method'})
SET r2.creationDate=s.creationDate

//Innovator
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(bt:BusinessTrend),(a:Achievement {name:'Innovator'})
MERGE (p)-[:HAS]->(a)
RETURN p,a

//step 2
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(tt:TechnologyTrend),(a:Achievement {name:'Innovator'})
MERGE (p)-[:HAS]->(a)
RETURN p,a

//step 3
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(bt:BusinessTrend),(p)-[r2:HAS]->(a:Achievement {name:'Innovator'})
SET r2.creationDate=s.creationDate
//step 4
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(tt:TechnologyTrend),(p)-[r2:HAS]->(a:Achievement {name:'Innovator'})
SET r2.creationDate=s.creationDate


//**********************************
//***  OFFERING FAMILIES 

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'Family'})
MERGE (p)-[:HAS]->(a)

//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'Family'})
SET r2.creationDate=s.creationDate


//Family Analytics

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyAnalytics'}),
(f)--(s2:Solution)--(p2:Practice{name:'Analytics'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyAnalytics'}),
(f)--(s2:Solution)--(p2:Practice{name:'Analytics'})
SET r2.creationDate=s.creationDate

//Family Application Services

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyApplicationServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Application Services'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyApplicationServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Application Services'})
SET r2.creationDate=s.creationDate


//Family Business Process Services
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyBPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Business Process Services'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyBPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Business Process Services'})
SET r2.creationDate=s.creationDate


//Family Cloud and Platform Services
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyCPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cloud and Platform Services'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyCPS'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cloud and Platform Services'})
SET r2.creationDate=s.creationDate


//Family Security
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilySecurity'}),
(f)--(s2:Solution)--(p2:Practice{name:'Security'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilySecurity'}),
(f)--(s2:Solution)--(p2:Practice{name:'Security'})
SET r2.creationDate=s.creationDate


//Family Workplace and Mobility
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyWorkplace'}),
(f)--(s2:Solution)--(p2:Practice{name:'Workplace and Mobility'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyWorkplace'}),
(f)--(s2:Solution)--(p2:Practice{name:'Workplace and Mobility'})
SET r2.creationDate=s.creationDate


//Family Cross-Offering Solutions
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyCross-Offering'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cross-Offering Solutions'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyCross-Offering'}),
(f)--(s2:Solution)--(p2:Practice{name:'Cross-Offering Solutions'})
SET r2.creationDate=s.creationDate

//Family Consulting

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyConsulting'}),
(f)--(s2:Solution)--(p2:Practice{name:'Consulting'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyConsulting'}),
(f)--(s2:Solution)--(p2:Practice{name:'Consulting'})
SET r2.creationDate=s.creationDate


//Family Enterprise and Cloud Apps
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyCloudApps'}),
(f)--(s2:Solution)--(p2:Practice{name:'Enterprise and Cloud Apps'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyCloudApps'}),
(f)--(s2:Solution)--(p2:Practice{name:'Enterprise and Cloud Apps'})
SET r2.creationDate=s.creationDate



//Family Apps Services and Program Excellence
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyAppsServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Apps Services and Program Excellence'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyAppsServices'}),
(f)--(s2:Solution)--(p2:Practice{name:'Apps Services and Program Excellence'})
SET r2.creationDate=s.creationDate


//Family IS&S Insurance
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyInsurance'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Insurance'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyInsurance'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Insurance'})
SET r2.creationDate=s.creationDate

//Family IS&S Healthcare & Life Sciences
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyHealthcare'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Healthcare & Life Sciences'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyHealthcare'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Healthcare & Life Sciences'})
SET r2.creationDate=s.creationDate


//Family IS&S Banking
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyBanking'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Banking'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyBanking'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Banking'})
SET r2.creationDate=s.creationDate

//Family IS&S Travel and Transportation
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(a:Achievement {name:'FamilyTravel'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Travel and Transportation'})
MERGE (p)-[:HAS]->(a)
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Offering'}),(p)-[r2:HAS]->(a:Achievement {name:'FamilyTravel'}),
(f)--(s2:Solution)--(p2:Practice{name:'IS&S Travel and Transportation'})
SET r2.creationDate=s.creationDate


//**********************************
//***  INDUSTRIES 

//Industry Banking & Capital Markets

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Banking & Capital Markets'}),(a:Achievement {name:'SolutionIndustrialistBanking'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Banking & Capital Markets'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistBanking'})
SET r2.creationDate=s.creationDate


//Industry Communications, Media & Entertainment
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Communications, Media & Entertainment'}),(a:Achievement {name:'SolutionIndustrialistCommunications'})
MERGE (p)-[:HAS]->(a)
return p,a

//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Communications, Media & Entertainment'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistCommunications'})
SET r2.creationDate=s.creationDate

//Industry Consumer Industries & Retail

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Consumer Industries & Retail'}),(a:Achievement {name:'SolutionIndustrialistConsumer'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Consumer Industries & Retail'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistConsumer'})
SET r2.creationDate=s.creationDate



//Industry Energy
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Energy'}),(a:Achievement {name:'SolutionIndustrialistEnergy'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Energy'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistEnergy'})
SET r2.creationDate=s.creationDate

//Industry Healthcare & Life Sciences

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Healthcare & Life Sciences'}),(a:Achievement {name:'SolutionIndustrialistHealthcare'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Healthcare & Life Sciences'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistHealthcare'})
SET r2.creationDate=s.creationDate


//Industry Public Sector

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Public Sector'}),(a:Achievement {name:'SolutionIndustrialistPublicSector'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Public Sector'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistPublicSector'})
SET r2.creationDate=s.creationDate


//Industry Travel & Transportation
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Travel & Transportation'}),(a:Achievement {name:'SolutionIndustrialistTravel'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Travel & Transportation'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistTravel'})
SET r2.creationDate=s.creationDate


//Industry Manufacturing
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Manufacturing'}),(a:Achievement {name:'SolutionIndustrialistManufacturing'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Manufacturing'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistManufacturing'})
SET r2.creationDate=s.creationDate

//Industry Pan Industry
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Pan Industry'}),(a:Achievement {name:'SolutionIndustrialistPanIndustry'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Pan Industry'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistPanIndustry'})
SET r2.creationDate=s.creationDate


//Industry Insurance
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Insurance'}),(a:Achievement {name:'SolutionIndustrialistInsurance'})
MERGE (p)-[:HAS]->(a)
return p,a
//step 2
MATCH (p:Person)-[r:ASSIGNED]->(s:Solution)--(si:SubIndustry)--(i:Industry{name:'Insurance'}),(p)-[r2:HAS]->(a:Achievement {name:'SolutionIndustrialistInsurance'})
SET r2.creationDate=s.creationDate
