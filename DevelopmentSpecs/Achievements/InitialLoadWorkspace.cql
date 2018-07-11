//1st Workspace
match (w:Workspace)<-[:MEMBER_OF]-(p:Person),(a:Achievement {name:'OnboardWorkspace'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a

match (w:Workspace)<-[:MEMBER_OF]-(p:Person),(p)-[r2:HAS]->(a:Achievement {name:'OnboardWorkspace'})
SET r2.creationDate=w.createDate



//Membership
match (w:Workspace)<-[:MEMBER_OF]-(p:Person),(a:Achievement {name:'In the Club'})
WITH p,a
MERGE (p)-[:HAS]->(a)
return p,a

match (w:Workspace)<-[:MEMBER_OF]-(p:Person),(p)-[r2:HAS]->(a:Achievement {name:'In the Club'})
SET r2.creationDate=w.createDate