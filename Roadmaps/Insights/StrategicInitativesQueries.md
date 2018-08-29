//count of disruptors within Strategic Initiatives
match (r:Region)--(a:Account)--(ia:InnovationAgenda)--(cvc:ClientValueChain)--(cd:ClientDisruptor)--(csi:ClientStrategicInitiative),
(cd)-[:SPECIALIZES]-(trend)
return r.name,csi.name, cd.name,trend.name
