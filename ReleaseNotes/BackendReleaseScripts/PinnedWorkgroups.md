match (wsg:WorkspaceGroup)-[r]-(p:Person)
set r.state='my'
return wsg,p