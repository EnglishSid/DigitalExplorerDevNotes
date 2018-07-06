//CONSTRAINT
CREATE CONSTRAINT ON (a:Achievement) ASSERT a.name IS UNIQUE

//1st Solution
MERGE (a:Achievement {name:'OnboardSolutions', shortName:'Onboard Solutions', description:'Submitted first solution', badgeImageURL:'assets/images/badges/onboardsolutions.png', module:'Solutions'})
with count(*) as dummy
//5th Solution
MERGE (a:Achievement {name:'Journeyman', shortName:'Journeyman', description:'Submitted 5th solution', badgeImageURL:'assets/images/badges/journeyman.png', module:'Solutions'})
with count(*) as dummy
//10th Solution
MERGE (a:Achievement {name:'Master', shortName:'Master', description:'Submitted 10th solution', badgeImageURL:'assets/images/badges/master.png', module:'Solutions'})
with count(*) as dummy
//Partner
MERGE (a:Achievement {name:'Friend', shortName:'We are all friends here', description:'Submitted a solution with a partner feature', badgeImageURL:'assets/images/badges/friend.png', module:'Solutions'})
with count(*) as dummy
//Method
MERGE (a:Achievement {name:'Method', shortName:'It’s not what I do, it’s how I do it', description:'Submitted a solution with a method feature', badgeImageURL:'assets/images/badges/method.png', module:'Solutions'})
with count(*) as dummy
//Innovator
MERGE (a:Achievement {name:'Innovator', shortName:'Innovator', description:'Submitted a solution with a business or technology trend', badgeImageURL:'assets/images/badges/innovator.png', module:'Solutions'})
with count(*) as dummy
//Family
MERGE (a:Achievement {name:'Family', shortName:'Keep it in the family', description:'Submitted a solution using a DXC offering', badgeImageURL:'assets/images/badges/family.png', module:'Solutions'})
with count(*) as dummy
//Family Analytics
MERGE (a:Achievement {name:'FamilyAnalytics', shortName:'Keep it in the family : Analytics', description:'Submitted a solution using a DXC Analytics offering', badgeImageURL:'assets/images/badges/familyanalytics.png', family:'Analytics', module:'Solutions'})
with count(*) as dummy
//Family Application Services
MERGE (a:Achievement {name:'FamilyApplicationServices', shortName:'Keep it in the family : Application Services', description:'Submitted a solution using a DXC Application Services offering', badgeImageURL:'assets/images/badges/familyapplicationservices.png', family:'Application Services', module:'Solutions'})
with count(*) as dummy
//Family Business Process Services
MERGE (a:Achievement {name:'FamilyBPS', shortName:'Keep it in the family : Business Process Services', description:'Submitted a solution using a DXC Business Process Services offering', badgeImageURL:'assets/images/badges/familybps.png', family:'Business Process Services', module:'Solutions'})
with count(*) as dummy
//Family Cloud and Platform Services
MERGE (a:Achievement {name:'FamilyCPS', shortName:'Keep it in the family : Cloud and Platform Services', description:'Submitted a solution using a DXC Cloud and Platform Services offering', badgeImageURL:'assets/images/badges/familycps.png', family:'Cloud and Platform Services', module:'Solutions'})
with count(*) as dummy
//Family Security
MERGE (a:Achievement {name:'FamilySecurity', shortName:'Keep it in the family : Security', description:'Submitted a solution using a DXC Security offering', badgeImageURL:'assets/images/badges/familysecurity.png', family:'Security', module:'Solutions'})
with count(*) as dummy
//Family Workplace and Mobility
MERGE (a:Achievement {name:'FamilyWorkplace', shortName:'Keep it in the family : Workplace and Mobility', description:'Submitted a solution using a DXC Workplace and Mobility offering', badgeImageURL:'assets/images/badges/familyworkplace.png', family:'Workplace and Mobility', module:'Solutions'})
with count(*) as dummy
//Family Cross-Offering Solutions
MERGE (a:Achievement {name:'FamilyCross-Offering', shortName:'Keep it in the family : Cross-Offering Solutions', description:'Submitted a solution using a DXC Cross-Offering Solutions offering', badgeImageURL:'assets/images/badges/familycrossoffering.png', family:'Cross-Offering Solutions', module:'Solutions'})
with count(*) as dummy
//Family Consulting
MERGE (a:Achievement {name:'FamilyConsulting', shortName:'Keep it in the family : Consulting', description:'Submitted a solution using a DXC Consulting offering', badgeImageURL:'assets/images/badges/familyconsulting.png', family:'Consulting', module:'Solutions'})
with count(*) as dummy
//Family Enterprise and Cloud Apps
MERGE (a:Achievement {name:'FamilyCloudApps', shortName:'Keep it in the family : Enterprise and Cloud Apps', description:'Submitted a solution using a DXC Enterprise and Cloud Apps offering', badgeImageURL:'assets/images/badges/familycloudapps.png', family:'Enterprise and Cloud Apps', module:'Solutions'})
with count(*) as dummy
//Family Apps Services and Program Excellence
MERGE (a:Achievement {name:'FamilyAppsServices', shortName:'Keep it in the family : Apps Services and Program Excellence', description:'Submitted a solution using a DXC Apps Services and Program Excellence offering', badgeImageURL:'assets/images/badges/familyappsservices.png', family:'Apps Services and Program Excellence', module:'Solutions'})
with count(*) as dummy
//Family IS&S Insurance
MERGE (a:Achievement {name:'FamilyInsurance', shortName:'Keep it in the family : IS&S Insurance', description:'Submitted a solution using a DXC IS&S Insurance offering', badgeImageURL:'assets/images/badges/familyinsurance.png', family:'IS&S Insurance', module:'Solutions'})
with count(*) as dummy
//Family IS&S Healthcare & Life Sciences
MERGE (a:Achievement {name:'FamilyHealthcare', shortName:'Keep it in the family : IS&S Healthcare & Life Sciences', description:'Submitted a solution using a DXC IS&S Healthcare & Life Sciences offering', badgeImageURL:'assets/images/badges/familyhealthcare.png', family:'IS&S Healthcare & Life Sciences', module:'Solutions'})
with count(*) as dummy
//Family IS&S Banking
MERGE (a:Achievement {name:'FamilyBanking', shortName:'Keep it in the family : IS&S Banking', description:'Submitted a solution using a DXC IS&S Banking offering', badgeImageURL:'assets/images/badges/familybanking.png', family:'IS&S Banking', module:'Solutions'})
with count(*) as dummy
//Family IS&S Travel and Transportation
MERGE (a:Achievement {name:'FamilyTravel', shortName:'Keep it in the family : IS&S Travel and Transportation', description:'Submitted a solution using a DXC IS&S Travel and Transportation offering', badgeImageURL:'assets/images/badges/familytravel.png', family:'IS&S Travel and Transportation', module:'Solutions'})
with count(*) as dummy
//Industry  (not used)
//MERGE (a:Achievement {name:'SolutionIndustrialist', shortName:'Solution Industrialist', description:'Submitted your first solution for a named industry', badgeImageURL:'assets/images/badges/solutionindustrialist.png', module:'Solutions'})

//Industry Banking & Capital Markets
MERGE (a:Achievement {name:'SolutionIndustrialistBanking', shortName:'Solution Industrialist : Banking & Capital Markets' , description:'Submitted your first solution for the  Banking & Capital Markets industry', badgeImageURL:'assets/images/badges/solutionindustrialistbanking.png', industry:'Banking & Capital Markets', module:'Solutions'})
with count(*) as dummy
//Industry Communications, Media & Entertainment
MERGE (a:Achievement {name:'SolutionIndustrialistCommunications', shortName:'Solution Industrialist : Communications, Media & Entertainment' , description:'Submitted your first solution for the Communications, Media & Entertainment industry', badgeImageURL:'assets/images/badges/solutionindustrialistcommunications.png', industry:'Communications, Media & Entertainment', module:'Solutions'})
with count(*) as dummy
//Industry Consumer Industries & Retail
MERGE (a:Achievement {name:'SolutionIndustrialistConsumer', shortName:'Solution Industrialist : Consumer Industries & Retail' , description:'Submitted your first solution for the Consumer Industries & Retail industry', badgeImageURL:'assets/images/badges/solutionindustrialistconsumer.png', industry:'Consumer Industries & Retail', module:'Solutions'})
with count(*) as dummy
//Industry Energy
MERGE (a:Achievement {name:'SolutionIndustrialistEnergy', shortName:'Solution Industrialist : Energy' , description:'Submitted your first solution for the Energy industry', badgeImageURL:'assets/images/badges/solutionindustrialistenergy.png', industry:'Energy', module:'Solutions'})
with count(*) as dummy
//Industry Healthcare & Life Sciences
MERGE (a:Achievement {name:'SolutionIndustrialistHealthcare', shortName:'Solution Industrialist : Healthcare & Life Sciences' , description:'Submitted your first solution for the Healthcare & Life Sciences industry', badgeImageURL:'assets/images/badges/solutionindustrialisthealthcare.png', industry:'Healthcare & Life Sciences', module:'Solutions'})
with count(*) as dummy
//Industry Public Sector
MERGE (a:Achievement {name:'SolutionIndustrialistPublicSector', shortName:'Solution Industrialist : Public Sector' , description:'Submitted your first solution for the Public Sector industry', badgeImageURL:'assets/images/badges/solutionindustrialistpublicsector.png', industry:'Public Sector', module:'Solutions'})
with count(*) as dummy
//Industry Travel & Transportation
MERGE (a:Achievement {name:'SolutionIndustrialistTravel', shortName:'Solution Industrialist : Travel & Transportation' , description:'Submitted your first solution for the Travel & Transportation industry', badgeImageURL:'assets/images/badges/solutionindustrialisttravel.png', industry:'Travel & Transportation', module:'Solutions'})
with count(*) as dummy
//Industry Manufacturing
MERGE (a:Achievement {name:'SolutionIndustrialistManufacturing', shortName:'Solution Industrialist : Manufacturing' , description:'Submitted your first solution for the Manufacturing industry', badgeImageURL:'assets/images/badges/solutionindustrialistmanufacturing.png', industry:'Manufacturing', module:'Solutions'})
with count(*) as dummy
//Industry Pan Industry
MERGE (a:Achievement {name:'SolutionIndustrialistPanIndustry', shortName:'Solution Industrialist : Pan Industry' , description:'Submitted your first Pan Industry solution', badgeImageURL:'assets/images/badges/solutionindustrialistpanindustry.png', industry:'Pan Industry', module:'Solutions'})
with count(*) as dummy
//Industry Insurance
MERGE (a:Achievement {name:'SolutionIndustrialistInsurance', shortName:'Solution Industrialist : Insurance' , description:'Submitted your first solution for the Insurance industry', badgeImageURL:'assets/images/badges/solutionindustrialistinsurance.png', industry:'Insurance', module:'Solutions'})
---

# Relationships

//Industry
MATCH (a:Achievement),(i:Industry)
WITH a,i
WHERE a.industry=i.name
MERGE (a)<-[r:INCLUDES]-(i)
RETURN a,i

//Practices
MATCH (a:Achievement),(p:Practice)
WITH a,p
WHERE a.family=p.name
MERGE (a)<-[r:INCLUDES]-(p)
RETURN a,p