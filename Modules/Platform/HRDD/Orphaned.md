# Orphaned queries


## Base query for people no longer employed by DXC
~~~
MATCH (p:Person)--(c:Company {name:'DXC Technology'}) 
WHERE NOT EXISTS(p.employeeStatus)
return count(p) as count
~~~

### Deleting the inactive employee entries
~~~
MATCH (p:Person)--(c:Company {name:'DXC Technology'}) 
WHERE NOT EXISTS(p.employeeStatus)
DETACH DELETE p
~~~

---

# Main Modules

## Trends

- **NO IDEA SHOULD BE TAKEN**
- NEED TO VALIDATE IMPACT TO TRENDS MODULE (READER AND COLLABORATION)


## Workspaces
### Find orphaned Workspace Groups

~~~
match (wsg:WorkspaceGroup)
WHERE NOT (wsg)<-[:MEMBER_OF]-()
detach delete wsg
~~~

### Find Orphaned Workspaces

~~~
match (ws:Workspace)
WHERE NOT (ws)-[:MEMBER_OF]->()
detach delete ws
~~~

### Things to delete from a Workspace
- Attachment

~~~
match (a:Attachment)
WHERE NOT (a)-[]-()
detach delete a
~~~

- WorkspaceNote

~~~
match (wsn:WorkspaceNote)
WHERE NOT (wsn)-[:ASSOCIATED_WITH]->()
detach delete wsn
~~~

---

## Playbooks
### Find orphaned Playbook Shelves
~~~
match (pbs:PlaybookShelf)
WHERE NOT (pbs)<-[:MEMBER_OF]-()
detach delete pbs
~~~

### Find orphaned Playbooks
~~~
match (pb:Playbook)
WHERE NOT (pb)<-[:CREATED]-()
detach delete pb
~~~

### Things to delete from a playbook
- PlaybookSection

~~~
match (pbs:PlaybookSection)
WHERE NOT (pbs)<-[:HAS]-()
detach delete pbs
~~~

---

## Accounts and Roadmaps

- **DO NOT DELETE INNOVATION AGENDAS OR ANY RELATED NODES**<br>
- **ONLY REMOVE PERSON FROM RELATIONSHIPS TO ACCOUNTS AND ROADMAPS**<br>
- **ORPHANED ROADMAPS NEED TO BE RETAINED**<br>

### Remove people from accounts

**No action required - person will be removed when deleted**

### Innovation Agendas

**No action required**

---

## Solutions
### Find orphaned solutions
- **DO NOT DELETE THE SOLUTIONS**
- **MARK THE SOLUTION AS NON-SEARCHABLE**
- **NEW REQUIREMENTS TO CREATE AN ADMIN PAGE OF ORPHANED SOLUTIONS**


~~~
match (s:Solution)
WHERE NOT (s)<-[:ASSIGNED]-()
return s
~~~



---

CLEAN-UP

match (s:Solution)-[r:ASSIGNED]->(p:Person) delete r

need to fix the 1 solution

solution id 9916
add Jason Campion as CT



ensure the london ic account is not deleted