
MERGE (a:Achievement {name:'PlaybooksIndustrialistBanking', shortName:'Playbooks Industrialist: Banking' , description:'Submitted your first Banking & Capital Markets Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistbanking.png', industry:'Banking & Capital Markets', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistCommunications', shortName:'Playbooks Industrialist: Communications' , description:'Submitted your first Communications, Media & Entertainment Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistcommunications.png', industry:'Communications, Media & Entertainment', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistConsumer', shortName:'Playbooks Industrialist: Consumer' , description:'Submitted your first Consumer Industries & Retail Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistconsumer.png', industry:'Consumer Industries & Retail', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistEnergy', shortName:'Playbooks Industrialist: Energy' , description:'Submitted your first Energy Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistenergy.png', industry:'Energy', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistHealthcare', shortName:'Playbooks Industrialist: Healthcare' , description:'Submitted your first Healthcare Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialisthealthcare.png', industry:'Healthcare & Life Sciences', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistInsurance', shortName:'Playbooks Industrialist: Insurance' , description:'Submitted your first Insurance Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistinsurance.png', industry:'Insurance', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistManufacturing', shortName:'Playbooks Industrialist: Manufacturing' , description:'Submitted your first Manufacturing Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistmanufacturing.png', industry:'Manufacturing', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistPanIndustry', shortName:'Playbooks Industrialist: Pan Industry' , description:'Submitted your first Pan Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistpanindustry.png', industry:'Pan Industry', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistPublicSector', shortName:'Playbooks Industrialist: Public Sector' , description:'Submitted your first Public Sector Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialistpublicsector.png', industry:'Public Sector', module:'playbooks', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'PlaybooksIndustrialistTravel', shortName:'Playbooks Industrialist: Travel' , description:'Submitted your first Travel & Transportation Industry Playbook', badgeImageURL:'assets/images/badges/Playbookindustrialisttravel.png', industry:'Travel & Transportation', module:'playbooks', order:'10'})


MATCH (a:Achievement {module:'playbooks'}), (m:META_AchievementType {name:'Playbook'}) 
MERGE (a)-[:ofType]->(m)
return a,m  


MATCH (a:Achievement),(i:Industry)
WITH a,i
WHERE a.industry=i.name
MERGE (a)<-[r:INCLUDES]-(i)
RETURN a,i






(p)-[:HAS {creationDate:pb.creationDate counter:1}]->(a)