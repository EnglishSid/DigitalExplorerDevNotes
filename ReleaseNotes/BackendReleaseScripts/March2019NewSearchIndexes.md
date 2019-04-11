new index based search

~~~
CALL db.index.fulltext.createNodeIndex('businessTrends', ['BusinessTrend'], ['name', 'description'])
CALL db.index.fulltext.createNodeIndex('technologyTrends', ['TechnologyTrend'], ['name', 'description'])
CALL db.index.fulltext.createNodeIndex('solutions', ['Solution'], ['name', 'description', 'elevatorPitch'])
CALL db.index.fulltext.createNodeIndex('playbooks', ['Playbook'], ['title', 'subtitle', 'description'])
CALL db.index.fulltext.createNodeIndex('people', ['Person'], ['name', 'email'])
~~~
