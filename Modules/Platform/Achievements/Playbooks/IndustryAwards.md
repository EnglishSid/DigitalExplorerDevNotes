# Industry Achievements for Playbooks.

**Award achievements to users upon the creation of a industry focused playbook**


### Tasks
  - Create badge images
    - Upload badges into `Assets`
  - Create achievement nodes
  - update playbook creator code to award playbooks
  - refactor against any existing users with industry playbooks


#### Scripts

~~~
//Industry Banking & Capital Markets
MERGE (a:Achievement {name:'PlaybookIndustrialistBanking', shortName:'Playbook Industrialist: Banking & Capital Markets' , description:'Submitted your first Playbook for the  Banking & Capital Markets industry', badgeImageURL:'assets/images/badges/Playbookindustrialistbanking.png', industry:'Banking & Capital Markets', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Communications, Media & Entertainment
MERGE (a:Achievement {name:'PlaybookIndustrialistCommunications', shortName:'Playbook Industrialist: Communications, Media & Entertainment' , description:'Submitted your first Playbook for the Communications, Media & Entertainment industry', badgeImageURL:'assets/images/badges/Playbookindustrialistcommunications.png', industry:'Communications, Media & Entertainment', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Consumer Industries & Retail
MERGE (a:Achievement {name:'PlaybookIndustrialistConsumer', shortName:'Playbook Industrialist: Consumer Industries & Retail' , description:'Submitted your first Playbook for the Consumer Industries & Retail industry', badgeImageURL:'assets/images/badges/Playbookindustrialistconsumer.png', industry:'Consumer Industries & Retail', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Energy
MERGE (a:Achievement {name:'PlaybookIndustrialistEnergy', shortName:'Playbook Industrialist: Energy' , description:'Submitted your first Playbook for the Energy industry', badgeImageURL:'assets/images/badges/Playbookindustrialistenergy.png', industry:'Energy', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Healthcare & Life Sciences
MERGE (a:Achievement {name:'PlaybookIndustrialistHealthcare', shortName:'Playbook Industrialist: Healthcare & Life Sciences' , description:'Submitted your first Playbook for the Healthcare & Life Sciences industry', badgeImageURL:'assets/images/badges/Playbookindustrialisthealthcare.png', industry:'Healthcare & Life Sciences', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Public Sector
MERGE (a:Achievement {name:'PlaybookIndustrialistPublicSector', shortName:'Playbook Industrialist: Public Sector' , description:'Submitted your first Playbook for the Public Sector industry', badgeImageURL:'assets/images/badges/Playbookindustrialistpublicsector.png', industry:'Public Sector', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Travel & Transportation
MERGE (a:Achievement {name:'PlaybookIndustrialistTravel', shortName:'Playbook Industrialist: Travel & Transportation' , description:'Submitted your first Playbook for the Travel & Transportation industry', badgeImageURL:'assets/images/badges/Playbookindustrialisttravel.png', industry:'Travel & Transportation', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Manufacturing
MERGE (a:Achievement {name:'PlaybookIndustrialistManufacturing', shortName:'Playbook Industrialist: Manufacturing' , description:'Submitted your first Playbook for the Manufacturing industry', badgeImageURL:'assets/images/badges/Playbookindustrialistmanufacturing.png', industry:'Manufacturing', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Pan Industry
MERGE (a:Achievement {name:'PlaybookIndustrialistPanIndustry', shortName:'Playbook Industrialist: Pan Industry' , description:'Submitted your first Pan Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistpanindustry.png', industry:'Pan Industry', module:'playbooks', order:'5'})
with count(*) as dummy
//Industry Insurance
MERGE (a:Achievement {name:'PlaybookIndustrialistInsurance', shortName:'Playbook Industrialist: Insurance' , description:'Submitted your first Playbook for the Insurance industry', badgeImageURL:'assets/images/badges/Playbookindustrialistinsurance.png', industry:'Insurance', module:'playbooks', order:'5'})
~~~

~~~
MATCH (ma:META_AchievementType {name:'Playbook'}),(a:Achievement {module:'playbooks'})
MERGE (a)-[:ofType]->(ma)
RETURN ma,a
~~~

~~~
MATCH (a:Achievement {module:'playbooks'}),(i:Industry)
WITH a,i
WHERE a.industry=i.name
MERGE (a)<-[r:INCLUDES]-(i)
RETURN a,i
~~~

