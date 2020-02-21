# Neo Bloom

If installing for the first time, please download the latest Neo4j Bloom Server from https://go.neo4j.com/download-bloom.html and activate it using this key. Please refer to the Bloom documentation at https://neo4j.com/docs/#bloom for detailed instructions. 

---


Development : http://dxcdedev2.centralus.cloudapp.azure.com:7474/browser/bloom/
Integration : 
Production : 

dev and int users

Bloom
Bl00mUs3r!

---

## Post installation set-up

### issues

performance impact to be reviewed

How to block "create node" menu item

need to look at connection/password prompts - integrate with existing SAML2 tokens

### Create the perspective

- Manage the perspective on development
- enable `Experimental Features`
- import perspective into production

:bulb: Development perspective also stored within this repo.

### Standard queries

### `About me`


### Top trends in a named industry


### top trends in Workgroup




### top trends in roadmaps


### top trends in solutions


### top trends in ideas

~~~
//find common trends in Ideas
match (wsg:WorkspaceGroup {name:'Smart Cities'})
optional match (wsg)-[*1..2]->(ia:InnovationAgenda)-[r]-(cvc:ClientValueChain)-[r2]-(cd:ClientDisruptor)-[r3]-(ci:ClientIdea)
//optional match (wsg)-[:TRIGGERED]-(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)--(ci:ClientIdea)
optional match (ci)-[r4]-(n)
return wsg,ia,cvc,cd,ci,n,r,r2,r3,r4
~~~




