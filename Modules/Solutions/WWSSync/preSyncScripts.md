1. Remove offering features which only have a 1:1 mapping to their Major solution - safe to remove and re-add if in the new loader

2. RENAME features based on csv mapping
    ~~~
    LOAD csv with headers from "file:///SyncActionsRENAMES.csv" as loadFile
    MATCH (f:Feature {name:loadFile.OldName})
    SET f.name=loadFile.newName
    ~~~

3. DROP features based on csv mapping
    ~~~
    LOAD csv with headers from "file:///SyncActionsDROPS.csv" as loadFile
    MATCH (f:Feature {name:loadFile.OldName})
    DETACH DELETE f
    ~~~

4. MERGE
    ~~~
    LOAD csv with headers from "file:///SyncActionsMERGE.csv" as loadFile
    MATCH (f:Feature {name:loadFile.OldName})--(s:Solution)
    with s,loadFile,f
    MATCH (f2:Feature{name:loadFile.newName})
    MERGE (s)-[:REALIZEDBY]->(f2)
	detach delete f
    return s,f2 
    ~~~

5. Information Governance Solution

    ~~~
    match (s:Solution {name:'Information Governance'})--(t:Tag)
    detach delete s
    ~~~

6. Single usage WWS Features
    ~~~
    LOAD csv with headers from "file:///SyncActionsDROPS2.csv" as loadFile
    MATCH (f:Feature {name:loadFile.OldName})
    DETACH DELETE f
    ~~~

7. Quick Starts
~~~
match (f:Feature)
where f.name contains 'QuickStart'
detach delete f
~~~

8 . remove non offering to practice nodes.


