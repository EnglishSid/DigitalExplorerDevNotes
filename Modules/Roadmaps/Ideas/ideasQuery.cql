MATCH (ci:ClientIdea)--(cd:ClientDisruptor)--(bt:BusinessTrend)
OPTIONAL MATCH (ci)--(cd2:ClientDisruptor)--(tt:TechnologyTrend)
OPTIONAL MATCH (ci)--(g:AgendaGoal)
OPTIONAL MATCH (ci)--(k:KPI)
OPTIONAL MATCH (cd)--(cvc:ClientValueChain)--(ia:InnovationAgenda)
OPTIONAL MATCH (cd2)--(cvc:ClientValueChain)--(ia:InnovationAgenda)
OPTIONAL MATCH (ia)--(a:Account)--(r:Region)
OPTIONAL MATCH (a)--(si:SubIndustry)--(ind:Industry)
RETURN 
a.name as AccountName,
r.name as Region,
si.name as SubIndustry,
ind.name as Industry,
ia.name as IAName,
ci.name as ClientIdea,
bt.name as BusinessTrend,
tt.name as TechnologyTrend,
cvc.name as DigitalValueChain,
g.name as ClientGoal,
k.name as ClientKPI