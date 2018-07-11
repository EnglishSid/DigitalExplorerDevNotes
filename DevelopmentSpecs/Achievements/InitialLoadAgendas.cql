//1st Agenda

MATCH (ia:InnovationAgenda)--(a:Account)--(p:Person),(ac:Achievement {name:'OnboardAgendas'})
WITH p,ac
MERGE (p)-[:HAS]->(ac)
return p,ac

MATCH (ia:InnovationAgenda)--(a:Account)--(p:Person),(p)-[r2:HAS]->(ac:Achievement {name:'OnboardAgendas'})
SET r2.creationDate=ia.creationDate
with count(*) as dummy



//Template
match (at:AgendaTemplate)-[r:CREATED]-(p:Person),(a:Achievement {name:'HelpingHands'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a

match (at:AgendaTemplate)-[r:CREATED]-(p:Person),(p)-[r2:HAS]->(a:Achievement {name:'HelpingHands'})
SET r2.creationDate=r.createDate


//Strategic initiative
match (ci:ClientStrategicInitiative)--(cd:ClientDisruptor)--(cvc:ClientValueChain)--(ia:InnovationAgenda)--(ac:Account)--(p:Person),(a:Achievement {name:'TakingTheNextStep'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a

match (ci:ClientStrategicInitiative)--(cd:ClientDisruptor)--(cvc:ClientValueChain)--(ia:InnovationAgenda)--(ac:Account)--(p:Person),(p)-[r2:HAS]->(a:Achievement {name:'TakingTheNextStep'})
SET r2.creationDate=ci.creationDate

