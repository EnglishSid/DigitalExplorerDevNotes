//1st Playbook
MERGE (a:Achievement {name:'Writer', shortName:'Writer', description:'Created first playbook', badgeImageURL:'assets/images/badges/1stPlaybook.png', module:'playbook', order:'1'})
with count(*) as dummy
//5th Playbook
MERGE (a:Achievement {name:'Author', shortName:'Author', description:'Created 5th playbook', badgeImageURL:'assets/images/badges/5thPlaybook.png', module:'playbook', order:'2'})
with count(*) as dummy


CREATE (n:META_AchievementType {name:'playbook'})
with count(*) as dummy

MATCH (a:Achievement {module:'playbook'}), (m:META_AchievementType {name:'playbook'}) 
MERGE (a)-[:ofType]->(m)
return a,m  
