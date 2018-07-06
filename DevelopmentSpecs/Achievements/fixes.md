# Fixes

## drop

`MATCH (a:Achievement {name:'FamilyAppsServices'}) detach delete a`

`match (P:Practice {name:'Apps Services and Program Excellence'})detach delete p`


## Rename image
~~~
MATCH (a:Achievement {name:'FamilyInsurance'})
Set a.badgeImageURL='assets/images/badges/familyinsurance.png'
return a.
~~~

## ordering
~~~
MATCH (a:Achievement {name:'OnboardSolutions'})
Set a.order:'1'
with count(*) as dummy
MATCH (a:Achievement {name:'Journeyman'})
Set a.order:'2'
with count(*) as dummy
MATCH (a:Achievement {name:'Master'})
Set a.order:'3'
with count(*) as dummy
MATCH (a:Achievement {name:'Friend'})
Set a.order:'5'
with count(*) as dummy
//Method
MATCH (a:Achievement {name:'Method'}) 
Set a.order:'5'
with count(*) as dummy
//Innovator
MATCH (a:Achievement {name:'Innovator'}) 
Set a.order:'5'
with count(*) as dummy
//Family
MATCH (a:Achievement {name:'Family'}) 
Set a.order:'6'
with count(*) as dummy
//Family Analytics
MATCH (a:Achievement {name:'FamilyAnalytics'}) 
Set a.order:'7'
with count(*) as dummy
//Family Application Services
MATCH (a:Achievement {name:'FamilyApplicationServices'}) 
Set a.order:'7'
with count(*) as dummy
//Family Business Process Services
MATCH (a:Achievement {name:'FamilyBPS'}) 
Set a.order:'7'
with count(*) as dummy
//Family Cloud and Platform Services
MATCH (a:Achievement {name:'FamilyCPS'}) 
Set a.order:'7'
with count(*) as dummy
//Family Security
MATCH (a:Achievement {name:'FamilySecurity'}) 
Set a.order:'7'
with count(*) as dummy
//Family Workplace and Mobility
MATCH (a:Achievement {name:'FamilyWorkplace'}) 
Set a.order:'7'
with count(*) as dummy
//Family Cross-Offering Solutions
MATCH (a:Achievement {name:'FamilyCross-Offering'}) 
Set a.order:'7'
with count(*) as dummy
//Family Consulting
MATCH (a:Achievement {name:'FamilyConsulting'}) 
Set a.order:'7'
with count(*) as dummy
//Family Enterprise and Cloud Apps
MATCH (a:Achievement {name:'FamilyCloudApps'}) 
Set a.order:'7'
with count(*) as dummy
//Family Apps Services and Program Excellence
MATCH (a:Achievement {name:'FamilyAppsServices'}) 
Set a.order:'7'
with count(*) as dummy
//Family IS&S Insurance
MATCH (a:Achievement {name:'FamilyInsurance'}) 
Set a.order:'7'
with count(*) as dummy
//Family IS&S Healthcare & Life Sciences
MATCH (a:Achievement {name:'FamilyHealthcare'})
Set a.order:'7'
with count(*) as dummy
//Family IS&S Banking
MATCH (a:Achievement {name:'FamilyBanking'}) 
Set a.order:'7'
with count(*) as dummy
//Family IS&S Travel and Transportation
Set a.order:'7'
with count(*) as dummy
//Industry Banking & Capital Markets
MATCH (a:Achievement {name:'SolutionIndustrialistBanking'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Communications, Media & Entertainment
MATCH (a:Achievement {name:'SolutionIndustrialistCommunications'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Consumer Industries & Retail
MATCH (a:Achievement {name:'SolutionIndustrialistConsumer'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Energy
MATCH (a:Achievement {name:'SolutionIndustrialistEnergy'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Healthcare & Life Sciences
MATCH (a:Achievement {name:'SolutionIndustrialistHealthcare'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Public Sector
MATCH (a:Achievement {name:'SolutionIndustrialistPublicSector'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Travel & Transportation
MATCH (a:Achievement {name:'SolutionIndustrialistTravel'}) 
Set a.order:'8'
with count(*) as dummy
//Industry Manufacturing
Set a.order:'8'
with count(*) as dummy
//Industry Pan Industry
MATCH (a:Achievement {name:'SolutionIndustrialistPanIndustry'})
Set a.order:'8' 
with count(*) as dummy
//Industry Insurance
MATCH (a:Achievement {name:'SolutionIndustrialistInsurance'}) 
Set a.order:'8'
with count(*) as dummy
---