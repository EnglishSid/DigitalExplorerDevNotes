//clean-up 
match (p)-[r:ASSIGNED {role:'Editor'}]->(s)
delete r

//1st Solution
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'OnboardSolutions'})
WITH p,count(r) as Counter, a
MERGE (p)-[:HAS {creationDate:'315532800000',Counter:Counter}]->(a)
RETURN p,a

//5th Solution

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'Journeyman'})
WITH p,count(r) as Counter, a
WHERE Counter > 5
MERGE (p)-[:HAS {creationDate:'315532800000',Counter:Counter}]->(a)
RETURN p,a

//10th Solution

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution),(a:Achievement {name:'Master'})
WITH p,count(r) as Counter, a
WHERE Counter > 10
MERGE (p)-[:HAS {creationDate:'315532800000',Counter:Counter}]->(a)
RETURN p,a

//Partner
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Partner'}),(a:Achievement {name:'Friend'})
MERGE (p)-[:HAS {creationDate:'315532800000'}]->(a)
RETURN p,a

//Method
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(f:Feature)--(fc:FeatureCategory{name:'Method'}),(a:Achievement {name:'Method'})
MERGE (p)-[:HAS {creationDate:'315532800000'}]->(a)
RETURN p,a

//Innovator
MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(bt:BusinessTrend),(a:Achievement {name:'Innovator'})
MERGE (p)-[:HAS {creationDate:'315532800000'}]->(a)
RETURN p,a

MATCH  (p:Person)-[r:ASSIGNED]->(s:Solution)--(tt:TechnologyTrend),(a:Achievement {name:'Innovator'})
MERGE (p)-[:HAS {creationDate:'315532800000'}]->(a)
RETURN p,a



//Family Analytics
CREATE (a:Achievement {name:'FamilyAnalytics', shortName:'Keep it in the family : Analytics', description:'Submitted a solution using a DXC Analytics offering', badgeImageURL:'assets/images/badges/familyanalytics.png', family:'Analytics'})

//Family Application Services
CREATE (a:Achievement {name:'FamilyApplicationServices', shortName:'Keep it in the family : Application Services', description:'Submitted a solution using a DXC Application Services offering', badgeImageURL:'assets/images/badges/familyapplicationservices.png', family:'Application Services'})

//Family Business Process Services
CREATE (a:Achievement {name:'FamilyBPS', shortName:'Keep it in the family : Business Process Services', description:'Submitted a solution using a DXC Business Process Services offering', badgeImageURL:'assets/images/badges/familybps.png', family:'Business Process Services'})

//Family Cloud and Platform Services
CREATE (a:Achievement {name:'FamilyCPS', shortName:'Keep it in the family : Cloud and Platform Services', description:'Submitted a solution using a DXC Cloud and Platform Services offering', badgeImageURL:'assets/images/badges/familycps.png', family:'Cloud and Platform Services'})

//Family Security
CREATE (a:Achievement {name:'FamilySecurity', shortName:'Keep it in the family : Security', description:'Submitted a solution using a DXC Security offering', badgeImageURL:'assets/images/badges/familysecurity.png', family:'Security'})

//Family Workplace and Mobility
CREATE (a:Achievement {name:'FamilyWorkplace', shortName:'Keep it in the family : Workplace and Mobility', description:'Submitted a solution using a DXC Workplace and Mobility offering', badgeImageURL:'assets/images/badges/familyworkplace.png', family:'Workplace and Mobility'})

//Family Cross-Offering Solutions
CREATE (a:Achievement {name:'FamilyCross-Offering', shortName:'Keep it in the family : Cross-Offering Solutions', description:'Submitted a solution using a DXC Cross-Offering Solutions offering', badgeImageURL:'assets/images/badges/familycrossoffering.png', family:'Cross-Offering Solutions'})

//Family Consulting
CREATE (a:Achievement {name:'FamilyConsulting', shortName:'Keep it in the family : Consulting', description:'Submitted a solution using a DXC Consulting offering', badgeImageURL:'assets/images/badges/familyconsulting.png', family:'Consulting'})

//Family Enterprise and Cloud Apps
CREATE (a:Achievement {name:'FamilyCloudApps', shortName:'Keep it in the family : Enterprise and Cloud Apps', description:'Submitted a solution using a DXC Enterprise and Cloud Apps offering', badgeImageURL:'assets/images/badges/familycloudapps.png', family:'Enterprise and Cloud Apps'})

//Family Apps Services and Program Excellence
CREATE (a:Achievement {name:'FamilyAppsServices', shortName:'Keep it in the family : Apps Services and Program Excellence', description:'Submitted a solution using a DXC Apps Services and Program Excellence offering', badgeImageURL:'assets/images/badges/familyappsservices.png', family:'Apps Services and Program Excellence'})

//Family IS&S Insurance
CREATE (a:Achievement {name:'FamilyInsurance', shortName:'Keep it in the family : IS&S Insurance', description:'Submitted a solution using a DXC IS&S Insurance offering', badgeImageURL:'assets/images/badges/familyisurance.png', family:'IS&S Insurance'})

//Family IS&S Healthcare & Life Sciences
CREATE (a:Achievement {name:'FamilyHealthcare', shortName:'Keep it in the family : IS&S Healthcare & Life Sciences', description:'Submitted a solution using a DXC IS&S Healthcare & Life Sciences offering', badgeImageURL:'assets/images/badges/familyhealthcare.png', family:'IS&S Healthcare & Life Sciences'})

//Family IS&S Banking
CREATE (a:Achievement {name:'FamilyBanking', shortName:'Keep it in the family : IS&S Banking', description:'Submitted a solution using a DXC IS&S Banking offering', badgeImageURL:'assets/images/badges/familybanking.png', family:'IS&S Banking'})

//Family IS&S Travel and Transportation
CREATE (a:Achievement {name:'FamilyTravel', shortName:'Keep it in the family : IS&S Travel and Transportation', description:'Submitted a solution using a DXC IS&S Travel and Transportation offering', badgeImageURL:'assets/images/badges/familytravel.png', family:'IS&S Travel and Transportation'})

//Industry Banking & Capital Markets
CREATE (a:Achievement {name:'SolutionIndustrialistBanking', shortName:'Solution Industrialist : Banking & Capital Markets' , description:'Submitted your first solution for the  Banking & Capital Markets industry', badgeImageURL:'assets/images/badges/solutionindustrialistbanking.png', industry:'Banking & Capital Markets'})

//Industry Communications, Media & Entertainment
CREATE (a:Achievement {name:'SolutionIndustrialistCommunications', shortName:'Solution Industrialist : Communications, Media & Entertainment' , description:'Submitted your first solution for the Communications, Media & Entertainment industry', badgeImageURL:'assets/images/badges/solutionindustrialistcommunications.png', industry:'Communications, Media & Entertainment'})

//Industry Consumer Industries & Retail
CREATE (a:Achievement {name:'SolutionIndustrialistConsumer', shortName:'Solution Industrialist : Consumer Industries & Retail' , description:'Submitted your first solution for the Consumer Industries & Retail industry', badgeImageURL:'assets/images/badges/solutionindustrialistconsumer.png', industry:'Consumer Industries & Retail'})

//Industry Energy
CREATE (a:Achievement {name:'SolutionIndustrialistEnergy', shortName:'Solution Industrialist : Energy' , description:'Submitted your first solution for the Energy industry', badgeImageURL:'assets/images/badges/solutionindustrialistenergy.png', industry:'Energy'})

//Industry Healthcare & Life Sciences
CREATE (a:Achievement {name:'SolutionIndustrialistHealthcare', shortName:'Solution Industrialist : Healthcare & Life Sciences' , description:'Submitted your first solution for the Healthcare & Life Sciences industry', badgeImageURL:'assets/images/badges/solutionindustrialisthealthcare.png', industry:'Healthcare & Life Sciences'})

//Industry Public Sector
CREATE (a:Achievement {name:'SolutionIndustrialistPublicSector', shortName:'Solution Industrialist : Public Sector' , description:'Submitted your first solution for the Public Sector industry', badgeImageURL:'assets/images/badges/solutionindustrialistpublicsector.png', industry:'Public Sector'})

//Industry Travel & Transportation
CREATE (a:Achievement {name:'SolutionIndustrialistTravel', shortName:'Solution Industrialist : Travel & Transportation' , description:'Submitted your first solution for the Travel & Transportation industry', badgeImageURL:'assets/images/badges/solutionindustrialisttravel.png', industry:'Travel & Transportation'})

//Industry Manufacturing
CREATE (a:Achievement {name:'SolutionIndustrialistManufacturing', shortName:'Solution Industrialist : Manufacturing' , description:'Submitted your first solution for the Manufacturing industry', badgeImageURL:'assets/images/badges/solutionindustrialistmanufacturing.png', industry:'Manufacturing'})

//Industry Pan Industry
CREATE (a:Achievement {name:'SolutionIndustrialistPanIndustry', shortName:'Solution Industrialist : Pan Industry' , description:'Submitted your first Pan Industry solution', badgeImageURL:'assets/images/badges/solutionindustrialistpanindustry.png', industry:'Pan Industry'})

//Industry Insurance
CREATE (a:Achievement {name:'SolutionIndustrialistInsurance', shortName:'Solution Industrialist : Insurance' , description:'Submitted your first solution for the Insurance industry', badgeImageURL:'assets/images/badges/solutionindustrialistinsurance.png', industry:'Insurance'})
