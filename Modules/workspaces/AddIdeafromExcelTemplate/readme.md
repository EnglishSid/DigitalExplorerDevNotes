# Import from Ideas Excel Template

## Data Model

![image](images\Workgroup.IdeaModel.png)<br>

## CSV File structure

`Idea_Name,SFDC_ID,Idea_Description,Problem_Statement,Business_Outcome_Name,Business_Outcome_Description,KPI​_Leading_indicator,Measure_Target​,Trends,Solution_Owner,Account`



## Graph Labels and Properties


### Node : ClientIdea

|Property|CSV Columns
|---|---|
|name|Idea_Name
|description|Idea_Description
|businessProblem|Problem_Statement
|creationDate| Epoch value `1590045830627`
|modifiedDate| Epoch value `1590045830627`



### Node : AgendaGoal

|Property|CSV Columns
|---|---|
|name|Business_Outcome_Name|
|description|Business_Outcome_Description

### Node : KPI

|Property|CSV Columns
|---|---|
|name|KPI​_Leading_indicator
|measure|Measure_Target​


### Node : ClientDisruptor

|Property|CSV Columns
|---|---|
|name|Trends|
|description| Trends |
|focusArea| Set to `true`


## Script

- Ensure the target workgroup exists beforehand
- Set the Workgroup name within the code
- testing is using `covid-19`




### Step 1 
**Create the ideas**
~~~
LOAD csv with headers from "file:///DigitalExplorerIdeasCOVID-19.csv" as Ideas
MATCH (wsg:WorkspaceGroup {name:'covid-19'})
WITH wsg, Ideas WHERE Ideas.Idea_Name IS NOT NULL
MERGE (ci:ClientIdea {name:Ideas.Idea_Name})
SET ci.description=Ideas.Idea_Description
SET ci.businessProblem=Ideas.Problem_Statement
SET ci.creationDate=1590045830627
SET ci.modifiedDate=1590045830627
MERGE (ci)-[:ASSOCIATED_TO]->(wsg)
RETURN ci,wsg
~~~


### Step 2 
**Create the Goals**

~~~
LOAD csv with headers from "file:///DigitalExplorerIdeasCOVID-19.csv" as Ideas
WITH Ideas WHERE Ideas.Idea_Name IS NOT NULL AND Ideas.Business_Outcome_Name IS NOT NULL
MATCH (wsg:WorkspaceGroup {name:'covid-19'})--(ci:ClientIdea {name:Ideas.Idea_Name})
MERGE (ci)-[:ADDRESSES]->(ag:AgendaGoal {name:Ideas.Business_Outcome_Name,description:Ideas.Business_Outcome_Description})
RETURN ci,ag,wsg
~~~

### Step 3 
**Create the KPIs**

~~~
LOAD csv with headers from "file:///DigitalExplorerIdeasCOVID-19.csv" as Ideas
WITH Ideas WHERE Ideas.Idea_Name IS NOT NULL AND Ideas.KPI_Leading_indicator IS NOT NULL
MATCH (wsg:WorkspaceGroup {name:'covid-19'})--(ci:ClientIdea {name:Ideas.Idea_Name})
MERGE (ci)-[:ADDRESSES]->(k:KPI {name:Ideas.KPI_Leading_indicator,measure:Ideas.Measure_Target})
RETURN ci,k,wsg
~~~

### Step 4 
**Create the Trends**

#### 4.1 Covid-19 Pandemic Trend

~~~
LOAD csv with headers from "file:///DigitalExplorerIdeasCOVID-19.csv" as Ideas
WITH Ideas WHERE Ideas.Idea_Name IS NOT NULL
MATCH (wsg:WorkspaceGroup {name:'covid-19'})--(ci:ClientIdea {name:Ideas.Idea_Name})
MATCH (bt:BusinessTrend {name:'COVID-19 Pandemic'})
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:bt.name,description:bt.description,focusArea:true})-[:SPECIALIZES]->(bt)
RETURN wsg,ci,cd,bt
~~~

#### 4.2 Trends within Idea Text

##### 4.2.1 Business Trends within the Idea

~~~
MATCH (wsg:WorkspaceGroup {name:'covid-19'})--(ci:ClientIdea)
MATCH (bt:BusinessTrend)
WHERE (tolower(ci.name)) CONTAINS tolower(bt.name) OR
(tolower(ci.description)) CONTAINS tolower(bt.name) OR
(tolower(ci.businessProblem)) CONTAINS tolower(bt.name)
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:bt.name,description:bt.description,focusArea:true})-[:SPECIALIZES]->(bt)
RETURN bt,cd,ci
~~~

##### 4.2.2 Technology Trends within the Idea

~~~
MATCH (wsg:WorkspaceGroup {name:'UKIIMEA Industry Motions'})--(ci:ClientIdea)
MATCH (t:TechnololgyTrend)
WHERE (tolower(ci.name)) CONTAINS tolower(t.name) OR
(tolower(ci.description)) CONTAINS tolower(t.name) OR
(tolower(ci.businessProblem)) CONTAINS tolower(t.name)
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:t.name,description:t.description,focusArea:true})-[:SPECIALIZES]->(t)
RETURN t,cd,ci
~~~


##### 4.2.3 Business Trends within the Goal

~~~
MATCH (wsg:WorkspaceGroup {name:'UKIIMEA Industry Motions'})--(ci:ClientIdea)-[:ADDRESSES]->(g:AgendaGoal)
MATCH (t:BusinessTrend)
WHERE tolower(g.description) CONTAINS tolower(t.name) OR
tolower(g.name) CONTAINS tolower(t.name)
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:t.name,description:t.description,focusArea:true})-[:SPECIALIZES]->(t)
return ci,g,t,cd
~~~

##### 4.2.4 Technology Trends within the Goal

~~~
MATCH (wsg:WorkspaceGroup {name:'UKIIMEA Industry Motions'})--(ci:ClientIdea)-[:ADDRESSES]->(g:AgendaGoal)
MATCH (t:TechnologyTrend)
WHERE tolower(g.description) CONTAINS tolower(t.name) OR
tolower(g.name) CONTAINS tolower(t.name)
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:t.name,description:t.description,focusArea:true})-[:SPECIALIZES]->(t)
return ci,g,t,cd
~~~

##### 4.2.5 Business Trends within the KPI

~~~
MATCH (wsg:WorkspaceGroup {name:'UKIIMEA Industry Motions'})--(ci:ClientIdea)-[:ADDRESSES]->(k:KPI)
MATCH (t:BusinessTrend)
WHERE tolower(k.measure) CONTAINS tolower(t.name) OR
tolower(k.name) CONTAINS tolower(t.name)
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:t.name,description:t.description,focusArea:true})-[:SPECIALIZES]->(t)
return ci,k,t,cd
~~~

##### 4.2.6 Technology Trends within the KPI

~~~
MATCH (wsg:WorkspaceGroup {name:'UKIIMEA Industry Motions'})--(ci:ClientIdea)-[:ADDRESSES]->(k:KPI)
MATCH (t:TechnologyTrend)
WHERE tolower(k.measure) CONTAINS tolower(t.name) OR
tolower(k.name) CONTAINS tolower(t.name)
MERGE (ci)-[:ASSIGNED]->(cd:ClientDisruptor {name:t.name,description:t.description,focusArea:true})-[:SPECIALIZES]->(t)
return ci,k,t,cd
~~~


### 5 Add the owners

`(ClientIdea)-[:ASSIGNED {role:'OWNER'}]->(Person)`

~~~
MATCH (ci),(p:Person {email:'costas.kaile@dxc.com'})
WHERE ID(ci) = 833689
MERGE (ci)-[:ASSIGNED {role:'OWNER'}]->(p)
RETURN ci,p
~~~