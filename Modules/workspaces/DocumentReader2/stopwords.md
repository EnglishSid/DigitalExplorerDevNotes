

Taken from https://www.ranks.nl/stopwords



~~~
CREATE (ms:META_STOP {name:'META_STOP'})
~~~


~~~
LOAD csv with headers from "file:///stopwords.csv" as StopWords

MATCH (ms:META_STOP {name:'META_STOP'})
MERGE (s:META_StopWord {name:StopWords.STOPWORDS})-[:IS]->(ms)
~~~