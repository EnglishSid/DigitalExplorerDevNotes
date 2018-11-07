
~~~
LOAD csv with headers from "file:///BVFImport.csv" AS BVFImport

MERGE (at:AgendaTemplate {
name:BVFImport.AgendaTemplatename,
description:BVFImport.AgendaTemplatedescription,
status:BVFImport.status,
validUntil:1572480000000
})
WITH at,BVFImport
MATCH (si:SubIndustry {name:BVFImport.SubIndustry})
WITH si,at,BVFImport
MERGE (at)-[:AGENDA_TEMPLATE_TO_SUBINDUSTRY]->(si)
WITH at,BVFImport,si
MATCH (p:Person {email:BVFImport.PersonName})
MERGE (p)-[:CREATED {createDate:1525340963261}]-(at)
WITH at,BVFImport,si,p
MERGE (ag:AgendaGoal {name:BVFImport.AgendaGoalname, description:BVFImport.AgendaGoalname})
MERGE (at)-[:GOALS]->(ag)
WITH at,BVFImport,si,p,ag
MERGE (cvc:ClientValueChain {name:BVFImport.ClientValueChainname,
businessArea:BVFImport.ClientValueChainbusinessArea})
MERGE (at)-[:PROGRAMS]->(cvc)
WITH at,BVFImport,si,p,ag,cvc
//KPIs to the Value Chains
MERGE (cvc)-[:KPIS]->(kpi:KPI {name:BVFImport.KPIname, measure:BVFImport.KPIname})
WITH at,BVFImport,si,p,ag,cvc,kpi
//A signal to the value chains
MERGE (cvc)<-[:DISRUPTORS]-(s:ClientDisruptor {
name:BVFImport.ClientDisruptorname,
description:BVFImport.ClientDisruptordescription,
segment:BVFImport.ClientDisruptorsegment,
trendType:BVFImport.ClientDisruptortrendType,
focusArea:false 
    })

return at,si,p,ag,cvc,kpi,s
~~~

~~~
MATCH (ag:AgendaGoal {name:'null'}) DETACH DELETE ag
MATCH (cd:ClientDisruptor {name:'null'}) DETACH DELETE cd
~~~




- [x] iBVF_Aerospace and Defense
- [x] iBVF_Airline
- [x] iBVF_Automotive
- [ ] iBVF_Banking
- [ ] iBVF_Communication Service Providers
- [ ] iBVF_Consumer
- [ ] iBVF_Freight and Logistics
- [x] iBVF_Healthcare Provider
- [x] iBVF_Industrial Manufacturing
- [ ] iBVF_Insurance
- [x] iBVF_Life Sciences
- [ ] iBVF_Oil and Gas
- [ ] iBVF_Rail Freight
- [ ] iBVF_Retail
- [ ] iBVF_Utilities


~~~
LOAD csv with headers from "file:///BVFImport.csv" AS BVFImport

MATCH (at:AgendaTemplate {name:BVFImport.AgendaTemplatename}) detach delete at
~~~

LOAD csv with headers from "file:///BVFImport.csv" AS BVFImport
MATCH (at:AgendaTemplate {name:BVFImport.AgendaTemplatename})--(ag:AgendaGoal)
detach delete ag







~~~
LOAD csv with headers from "file:///BVFImport.csv" AS BVFImport
MATCH (at:AgendaTemplate {name:BVFImport.AgendaTemplatename})--(cvc:ClientValueChain {name:BVFImport.KPICVC})
WITH at,BVFImport,cvc
//KPIs to the Value Chains
MERGE (cvc)-[:KPIS]->(kpi:KPI {name:BVFImport.KPIname, measure:BVFImport.KPImeasure})
return at,cvc,kpi
~~~
