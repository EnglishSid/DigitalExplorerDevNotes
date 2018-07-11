# Initial Load
Initial load will match against feature name, if match found update with WWS ID (solution and feature)

- if match not found add and consider new and correct feature from WWS master

## for features without WWS ID's

- if **no** relationship to other solutions - delete
- if relationship to other solution - :mag: review

## for solutions without WWS ID's
- if **no** features delete
- if **no** features map to other solutions - delete
- if features map to other solutions - :mag: review


### Relationship to Practice nodes
- Only solutions within the WWS sync should be related to the Practice node
- Ensure solution search for Offering Families is updated to "back track" from features to find offering
- Action: :exclamation: remove all relationships to non offering solutions to the practice nodes


---

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



