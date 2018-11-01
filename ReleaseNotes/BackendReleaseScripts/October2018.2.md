

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

~~~
MATCH (tg1:META_TechnologyGroup) WHERE tg1.name = 'UX'
MATCH (tg2:META_TechnologyGroup) WHERE tg2.name = 'Transactional Core'
MATCH (tg3:META_TechnologyGroup) WHERE tg3.name = 'Foundational Core'
MATCH (tg4:META_TechnologyGroup) WHERE tg4.name = 'Infrastructure'
MATCH (tg5:META_TechnologyGroup) WHERE tg5.name = 'Security'
MATCH (tg6:META_TechnologyGroup) WHERE tg6.name = 'System Management & Operations'
WITH tg1, tg2, tg3, tg4, tg5, tg6
SET tg1.order = 1
SET tg2.order = 2
SET tg3.order = 3
SET tg4.order = 4
SET tg5.order = 5
SET tg6.order = 6
RETURN tg1, tg2, tg3, tg4, tg5, tg6
~~~