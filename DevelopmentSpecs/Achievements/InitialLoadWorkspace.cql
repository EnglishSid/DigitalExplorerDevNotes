//1st Workspace
match (w:Workspace)<-[:MEMBER_OF]-(p:Person),(a:Achievement {name:'OnboardWorkspace'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a




//Membership
match (w:Workspace)<-[:MEMBER_OF]-(p:Person),(a:Achievement {name:'In the Club'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a