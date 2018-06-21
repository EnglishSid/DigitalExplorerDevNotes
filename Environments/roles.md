##Roles
- Admin
- SolutionEditor
- TrendReviewer
- AgendaManager

##Add role
~~~~
MATCH (p:Person),(r:Role)
WHERE p.email = 'digital.explorer@hpe.com' AND r.name = 'Admin'
CREATE (p)-[rel:Assigned]->(r)
RETURN rel
~~~~

##Remove role
~~~~
MATCH (p {email: 'digital.explorer@hpe.com'})-[rel:Assigned]->(r {name: 'Admin'})
DELETE rel
~~~~



UserID: digitalexplorer
Password: 83c11c07f8

userid : dstevens26
Password D1gital
