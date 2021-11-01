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



---

moving workspaces


~~~
match (ws:Workspace {name:'Leoni AG 2018'})-[r]-(wsg:WorkspaceGroup),
(wsg2:WorkspaceGroup {name:'Aptiv'})
//MERGE (ws)-[:MEMBER_OF]->(wsg2)
//DELETE r
return ws,wsg,wsg2
~~~

