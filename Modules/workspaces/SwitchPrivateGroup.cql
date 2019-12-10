match (wsg:WorkspaceGroup {name:'Ferrero'})
remove wsg:WorkspaceGroupPublic
set wsg:WorkspaceGroupPrivate
return wsg