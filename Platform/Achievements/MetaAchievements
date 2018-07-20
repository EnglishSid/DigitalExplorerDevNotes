MATCH (n:META_AchievementType) RETURN n LIMIT 25


CREATE (n:META_AchievementType {name:'Solution'})

CREATE (n:META_AchievementType {name:'Trend'})

CREATE (n:META_AchievementType {name:'Agenda'})

CREATE (n:META_AchievementType {name:'Workspace'})


MATCH (a:Achievement {module:'Solutions'}), (m:META_AchievementType {name:'Solution'}) 
MERGE (a)-[:ofType]->(m)
return a,m  


MATCH (a:Achievement {module:'Trends'}), (m:META_AchievementType {name:'Trend'}) 
MERGE (a)-[:ofType]->(m)
return a,m  


MATCH (a:Achievement {module:'Agendas'}), (m:META_AchievementType {name:'Agenda'}) 
MERGE (a)-[:ofType]->(m)
return a,m  


MATCH (a:Achievement {module:'Workspace'}), (m:META_AchievementType {name:'Workspace'}) 
MERGE (a)-[:ofType]->(m)
return a,m  
