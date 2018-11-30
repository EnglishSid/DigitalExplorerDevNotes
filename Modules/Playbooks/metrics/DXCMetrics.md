# Script to create and manage the DXC metrics

- Contact the the DXC Company node

include
title
subtext
iconURI
order


Master reference is here : https://whatwesell.dxc.com/dxc/client-messaging/client-presentation/


MERGE (m:DXCMetric {
order:'1',
title:'$21+B',
subtext:'global IT services leader',
iconURI:'cup.png'
})


MERGE (m:DXCMetric {
order:'2',
title:'60+',
subtext:'years of innovation',
iconURI:'innovation.png'
})
with count(*) as dummy

MERGE (m:DXCMetric {
order:'3',
title:'#19',
subtext:'of CR Magazine’s 100 Best Corporate Citizens for 2018',
iconURI:'corporateresponsibility.png'
})
with count(*) as dummy
MERGE (m:DXCMetric {
order:'4',
title:'250+',
subtext:'partner network with best-of-breed partners, 16 strategic partners',
iconURI:'alliances.png'
})
with count(*) as dummy
MERGE (m:DXCMetric {
order:'5',
title:'~130,000',
subtext:'employees worldwide',
iconURI:'employees.png'
})
with count(*) as dummy
MERGE (m:DXCMetric {
order:'6',
title:'70+',
subtext:'countries',
iconURI:'global.png'
})
with count(*) as dummy

MERGE (m:DXCMetric {
order:'7',
title:'~6,000',
subtext:'clients, 200+ Fortune 500 companies',
iconURI:'communities.png '
})
with count(*) as dummy
MERGE (m:DXCMetric {
order:'8',
title:'9',
subtext:'streamlined offering families',
iconURI:'offerings.png'
})
with count(*) as dummy
MERGE (m:DXCMetric {
order:'9',
title:'10,000+',
subtext:'Agile/DevOps professionals',
iconURI:'people.png'
})



match (m:DXCMetric),(c:Company {name:'DXC Technology'})
merge (c)-[:METRICS]->(m)
return c,m