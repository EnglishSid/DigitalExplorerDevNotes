//TO BE RUN AGAINST DE DATASET!
MATCH (f:Feature {name:'Hadoop Solutions'})
set f.name="As a Service Solution for Hadoop"
with count(*) as dummy
//
MATCH (f:Feature {name:'OmniLocation'})
set f.name="DXC OmniLocation"
with count(*) as dummy
//
MATCH (f:Feature {name:'Big Data Discovery Experience Service'})
set f.name="Big Data Discovery Experience Services"
with count(*) as dummy