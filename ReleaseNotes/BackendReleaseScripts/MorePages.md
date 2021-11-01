~~~
MATCH (pb:Playbook)-[r:HAS]->(ps:PlaybookSection) SET ps.secondText = ps.text, ps.text = pb.description, ps.layout = 'THREE_COLUMNS', r.order = 0 RETURN pb, ps
~~~