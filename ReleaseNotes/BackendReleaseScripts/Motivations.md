###Step 1: merge goals nodes into Motivation node (change or remove the solution name as required)

#####Named solution
~~~~
match (s:Solution) where s.name="Digital Explorer HoloLens Edition"
with s
MATCH (goal:Goal)-[]-(s)
with goal,s
CREATE (m:Motivation {name:goal.name,description:goal.description})-[:INFLUENCE]->(s)
RETURN s,goal,m
~~~~

#####All solutions
~~~~
MATCH (goal:Goal)-[]-(s:Solution)
with goal,s
CREATE (m:Motivation {name:goal.name,description:goal.description})-[:INFLUENCE]->(s)
RETURN s,goal,m
~~~~



###Step 2 Merge constraints into Motivation Node
#####Named solution
~~~~
match (s:Solution) where s.name="Digital Explorer HoloLens Edition"
with s
MATCH (constraint:Constraint)-[]-(s)
with constraint,s
CREATE (m:Motivation {name:constraint.name,description:constraint.description})-[:INFLUENCE]->(s)
RETURN s,constraint,m
~~~~

#####All solutions
~~~~
MATCH (constraint:Constraint)-[]-(s:Solution)
with constraint,s
CREATE (m:Motivation {name:constraint.name,description:constraint.description})-[:INFLUENCE]->(s)
RETURN s,constraint,m
~~~~

###Step 3 Merge Driver into Motivation Node
#####Named solution
~~~~
match (s:Solution) where s.name="Digital Explorer HoloLens Edition"
with s
MATCH (driver:Driver)-[]-(s)
with driver,s
CREATE (m:Motivation {name:driver.name,description:driver.description})-[:INFLUENCE]->(s)
RETURN s,driver,m
~~~~

#####All solutions
~~~~
MATCH (driver:Driver)-[]-(s)
with driver,s
CREATE (m:Motivation {name:driver.name,description:driver.description})-[:INFLUENCE]->(s)
RETURN s,driver,m
~~~~



####4 : remove the Constraints
 ~~~~
MATCH (constraint:Constraint)-[]-(s:Solution)
detach delete constraint
 ~~~~

#### 5: remove the goals
~~~~
MATCH (g:Goal)-[:INFLUENCE]->(s:Solution)
detach delete g
~~~~

#### 6: remove the drivers
~~~~
MATCH (d:Driver)-[:INFLUENCE]->(s:Solution)
detach delete d
~~~~

**Step 4, 5 & 6 only after updates made to SE frontend**
 