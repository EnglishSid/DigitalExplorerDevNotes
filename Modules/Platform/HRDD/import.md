DEHRDD


EMPLID
NAME
EMAIL_ADDR
MANAGER_EMAIL


~~~
LOAD csv with headers from "file:///DEHR.csv" as DEHRDD
MERGE (p:Person {name:DEHRDD.NAME2,email:DEHRDD.EMAIL_ADDR,emplid:DEHRDD.EMPLID})
~~~

~~~
LOAD csv with headers from "file:///DEHR.csv" as DEHRDD
MATCH (p1:Person {email:DEHRDD.EMAIL_ADDR}),(p2:Person {email:DEHRDD.MANAGER_EMAIL})
MERGE (p1)-[:REPORTS_TO]->(p2)
~~~





1124049	,Tin Lai Wai	ltin2@dxc.com	bmanickam3@dxc.com
11410080	.,Jagriti	jpal4@csc.com	vwadehra@dxc.com
11410149	.,Abhiyu	ajaiswal25@dxc.com	psingh48@dxc.com
11500207	Å½elnytÄ—,Daiva	dzelnyte@csc.com	apundziute@csc.com
11500256	,	bvino@csc.com	rharpalani@dxc.com
11544163	Dhanasekara,Jose Rajesh	d-jose-rajesh@dxc.com	harish-kumar.k-m@dxc.com





