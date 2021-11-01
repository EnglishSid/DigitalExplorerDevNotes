

### Users who have used the extended reader


MATCH (n:AttachmentNlpPage)--(an:AttachmentNlp)--(a:Attachment)--(ws:Workspace)--(wsg:WorkspaceGroup)--(p:Person) RETURN wsg,p



### Total number of insights

MATCH (n:Insight) RETURN count(n)


### total number of attachment pages

MATCH (n:AttachmentNlpPage) RETURN count(n)


### Insights added to Workspaces

MATCH (n:Insight)--(ws:Workspace) RETURN n,ws