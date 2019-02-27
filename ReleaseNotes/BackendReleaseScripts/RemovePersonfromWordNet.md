
# remove person from WordNet

Part of the Feb 26th 2019 Release

~~~
match (p:Person)-[r]-(wn:WN_Word) detach delete r
~~~