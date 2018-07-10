//1st Agenda

MATCH (ia:InnovationAgenda)--(a:Account)--(p:Person),(ac:Achievement {name:'OnboardAgendas'})
WITH p,ac
MERGE (p)-[:HAS]->(ac)
return p,ac



//Template
match (at:AgendaTemplate)-[:CREATED]-(p:Person),(a:Achievement {name:'HelpingHands'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a


//Strategic initiative
match (ci:ClientStrategicInitiative)--(cd:ClientDisruptor)--(cvc:ClientValueChain)--(ia:InnovationAgenda)--(ac:Account)--(p:Person),(a:Achievement {name:'TakingTheNextStep'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a
