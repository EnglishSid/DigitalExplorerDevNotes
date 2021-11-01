

~~~
//Agenda types
CREATE (AgendaType:AgendaType {name:'DXC Innovation Agenda'})
CREATE (AgendaType:AgendaType {name:'DXC Digital Transformation Map'})
~~~

~~~
//connect existing agendas
MATCH (ia:InnovationAgenda),(at:AgendaType {name:'DXC Innovation Agenda'})
MERGE (ia)-[:OFTYPE]->(at)
~~~

see also the AO Canvas file

