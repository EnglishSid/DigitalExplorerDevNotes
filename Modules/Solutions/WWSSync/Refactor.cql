//Script to assign existing solutions back to Practices
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'IS&S Insurance'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Application Services'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'IS&S Travel, Transportation & Hospitality'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Security'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Analytics'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'IS&S Banking'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Cloud and Platform Services'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Enterprise & Cloud Applications'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Business Process Services'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Consulting'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Workplace and Mobility'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'IS&S Healthcare & Life Sciences'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
with count(*) as dummy
//
MATCH (s:Solution)--(f:Feature)-[:OFCATEGORY]->(fc:FeatureCategory {name:'Offering'})
with s,f
MATCH (p:Practice {name:'Cross-Offering Solutions'})--(s2:Solution)--(f)
MERGE (s)-[:INFLUENCE]->(p)
//