Script for the June 2019 release of workspace groups


//find people with workspaces
match (ws:Workspace)<-[:MEMBER_OF]-(p:Person) 
with DISTINCT p,ws
//create a new private group for them and make them the owner
MERGE (wsp:WorkspaceGroupPrivate:WorkspaceGroup {name:p.email+'PrivateGroup'})<-[:MEMBER_OF {role:'owner'}]-(p)
with wsp,ws,p
//move their workspaces into the group
MERGE (ws)-[:MEMBER_OF]->(wsp)


// now to remove the membership of the person to the space - it's comes via the group now

match (p:Person)-[r:MEMBER_OF]-(ws:Workspace)
delete r



---  

Initial content to provide 

DXC Digital Papers
DXC Industry primers


