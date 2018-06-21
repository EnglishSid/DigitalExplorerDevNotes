- check database version in Neo4j console on WWB Neo4j production server by executing:
~~~~
match (m:META)
return m.version
~~~~
- login into WWB Neo4j production server console 
- navigate to Neo4j database directory 

~~~~
cd /opt/mount1/neo4j-community-3.0.6/data/databases/
~~~~
- pack current production database, by executing
~~~~
sudo tar -zcvf wwb.<version>.tar.gz graph.db
~~~~
mind replacing <version> with result from step 1

- download created tarball (/opt/mount1/neo4j-community-3.0.6/data/databases/wwb.<version>.tar.gz graph.db) to your local computer

- Upload downloaded tarball from your local computer to WWB Azure server (emeact17297.cloudapp.net) into /home/emeactuse/neo4j-community-3.0.6/data/databases directory

- login into WWB Neo4j Azure server console 

- stop Neo4j with by executing:
~~~~
sudo ~/neo4j-community-3.0.6/bin/neo4j stop
~~~~
- navigate to Neo4j database directory /home/emeactuse/neo4j-community-3.0.6/data/databases

- remove old data by executing:
~~~~
sudo rm -r graph.db
~~~~
- unpack uploaded tarball by executing
~~~~
sudo tar -xvzf wwb.<version>.tar.gz graph.db
~~~~
mind replacing <version> with result from step 1


- start Neo4j by executing:
~~~~
sudo ~/neo4j-community-3.0.6/bin/neo4j start
~~~~
- validate synchronization by checking database version in Neo4j console on WWB Neo4j production server by executing:
~~~~
match (m:META)
return m.version
~~~~
version should comply with result in step 1

### Events version only

Only complete this step on the events instance
hide non-referenceable solutions from search by executing in Neo4j console on Azure server:
~~~~
match (s:Solution)
where s.referenceable <> 'Yes'
set s.searchable = false
~~~~

remove the 2015 solutions - poor data quality
~~~~
MATCH (s:Solution)-[]-(t:Tag) where t.name='2015' 
set s.searchable = false
return s
~~~~



## update for dev
if updating the dev database run the following to reassign our dev account to admin role

~~~~
match (p:Person) where p.name="digitalexplorer"
with p
match (r:Role) where r.name="Admin"
with p,r
merge (p)-[rs:ASSIGNED]->(r)
return p,r
~~~~