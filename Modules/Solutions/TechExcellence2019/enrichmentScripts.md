# Enrichment scripts

Scripts to be run against the database to make more connections to matching business and technology trends
<br>
## target is

(trend)-[:INFLUCENCE]->(solution)


### Business Trends
~~~
// Business Trends
// Description
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(bt:BusinessTrend)
with s,bt
where toLower(s.description) contains toLower(bt.name) 
MERGE (bt)-[:INFLUENCE]->(s)
with count(*) as dummy

// elevator Pitch
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(bt:BusinessTrend)
with s,bt
where toLower(s.elevatorPitch) contains toLower(bt.name) 
MERGE (bt)-[:INFLUENCE]->(s)
with count(*) as dummy

// value proposition
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(bt:BusinessTrend)
with s,bt
where toLower(s.generalValue) contains toLower(bt.name) 
MERGE (bt)-[:INFLUENCE]->(s)
with count(*) as dummy

// business value
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(bt:BusinessTrend)
with s,bt
where toLower(s.businessValue) contains toLower(bt.name) 
MERGE (bt)-[:INFLUENCE]->(s)
with count(*) as dummy

// technical value
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(bt:BusinessTrend)
with s,bt
where toLower(s.technicalValue) contains toLower(bt.name) 
MERGE (bt)-[:INFLUENCE]->(s)
with count(*) as dummy

// client Testimonial
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(bt:BusinessTrend)
with s,bt
where toLower(s.clientTestimonial) contains toLower(bt.name) 
MERGE (bt)-[:INFLUENCE]->(s)
~~~


### Technology Trends
~~~
// Technology Trends
// Description
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(tt:TechnologyTrend)
with s,tt
where toLower(s.description) contains toLower(tt.name) 
MERGE (tt)-[:INFLUENCE]->(s)
with count(*) as dummy

// elevator Pitch
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(tt:TechnologyTrend)
with s,tt
where toLower(s.description) contains toLower(tt.name) 
MERGE (tt)-[:INFLUENCE]->(s)
with count(*) as dummy

// value proposition
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(tt:TechnologyTrend)
with s,tt
where toLower(s.description) contains toLower(tt.name) 
MERGE (tt)-[:INFLUENCE]->(s)
with count(*) as dummy

// business value
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(tt:TechnologyTrend)
with s,tt
where toLower(s.description) contains toLower(tt.name) 
MERGE (tt)-[:INFLUENCE]->(s)
with count(*) as dummy

// technical value
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(tt:TechnologyTrend)
with s,tt
where toLower(s.description) contains toLower(tt.name) 
MERGE (tt)-[:INFLUENCE]->(s)
with count(*) as dummy

// client Testimonial
match (s:Solution)--(t:Tag {name:'Technical Excellence 2019'}),(tt:TechnologyTrend)
with s,tt
where toLower(s.description) contains toLower(tt.name) 
MERGE (tt)-[:INFLUENCE]->(s)
~~~