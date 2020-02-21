# WWS Sub Offering synchronization

The aim of the 2020 WWS Sync is

1. To create solution models for each SubOffering within What We Sell.
2. To create a secondary relationship for joint DXC and Partner to both the offering family and the Partner information, thus allowing the partner solutions to be found via 2 channels
3. Provide a reference point for offering managers to understand their key trends 


- _The secondary partner relationship also enables alliance and solution partners the option to add additional capabilities (into Digital Explorer) and obtain a single viewpoint of both joint DXC/Partner offerings and their own core capabilities_
- _This would also allow in theory a single Digital Explorer playbook to be created detailing all solutions for a single partner_
<br>

_The current implementation creates solution models at the Major Offering level._
<br>

## Target model
![image](images/GraphModel.png)<br>


## Graph database set-up

- Create a new `Solution Type` called DXC Offerings
- Automate the creation of the required `Solution Sub Type` based on the Major Offering information retrieved from WWS
  - `Solution Sub Type` = `Major Offering Name`
- leverage the existing `Solution Type` for Alliance partners
  - Create/Leverage the required `Solution Sub Type` based on the partners name
    - `Solution Sub Type` = `Partners Name`


## Field mappings within the Graph

### General fields and nodes

|WWS Field|DE Node|Graph Model
|---|---|---|
|Offering family|Practice|`(Solution)-[:ASSIGNED]->(Practice)`
|Major Offering|SolutionSubType - automatically generated from WWS data|`(Solution)-[:OfType]->(SolutionSubType {name:<value>})`
|Partner Name|SolutionSubType - automatically generated from WWS data|`(Solution)-[:OfType]->(SolutionSubType {name:<value>})`
|Contacts|Person |`(Person)-[:ASSIGNED {role:<value>}]->(Solution`)|
|WWS URL|Attachment|`(Solution)-[]-(Attachment {name:<value>,URL:<value>})`

### Sub Offering field mappings

|WWS Field|Digital Explorer (node.property)
|---|---|
|Sub Offering Name|solution.name
|Short description|solution.pitch
|Description|solution.description
|Value Proposition|solution.ValueProposition
|Why DXC?|Solution.BusinessValue (2)
|Proof Points|Solution.TechnicalValue (1)
|Level Setting|Solution.BusinessValue (1)
|Deal Characteristics|TechnicalValue (2)

_Notes on Business and Technical Value mappings_
The two fields from WWS are combined into a single property in Digital Explorer with a `---` markdown value added between each field<br>



## Connecting to the Graph

### Trends

All text fields within the solution node are analysed for matching business and technology trends and the following relationship is created

- `(Solution)-[:]->(BusinessTrend)`
- `(Solution)-[:]->(TechnologyTrend)`

### Industries

#### Industry
|offering family|industry|
|---|---|
|Analytics|Pan Industry
|Application Services|Pan Industry
|Business Process Services|Pan Industry
|Cloud and Platform Services|Pan Industry
|Security|Pan Industry
|Workplace and Mobility|Pan Industry
|Cross-Offering Solutions|Pan Industry
|Consulting|Pan Industry
|IS&S Insurance|Insurance
|IS&S Healthcare & Life Sciences|Healthcare & Life Sciences
|IS&S Banking|Banking
|IS&S Travel and Transportation|Travel and Transportation
|Enterprise and Cloud Apps|Pan Industry
|Apps Services and Program Excellence|Pan Industry



---

## WWS API Information

https://whatwesell.dxc.com/dxc/about-wws/api/



WWS API Contact : brad.bode@dxc.com and cwatkins@dxc.com


### Changes required to Digital Explorer

- Allow solutions without `Features` to be retrieved and presented on the solution datasheet
- Allow solutions to have a potential relationship to two `Solution SubType` nodes

----

### Current issues

Each section of text within the WWS page is returned as a unstructured single single of text; it's currently not possible to map the WWS information to the target Digital Explorer Solution model; everything would land in the description field


title = name
meta_description = value prop
full body = description
major_offering = Solution subType



---

## WWS Page validation

- [Page Validation 1](images/PageMapping1.png)
- [Page Validation 2](images/PageMapping2.png)
- [Page Validation 3](images/PageMapping3.png)