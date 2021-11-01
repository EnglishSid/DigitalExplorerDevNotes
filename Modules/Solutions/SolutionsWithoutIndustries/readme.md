MATCH (s:Solution) 
WHERE NOT (s)-[]-(:SubIndustry)
WITH s 
MATCH (r:Solution)--(st:SolutionSubType)
WHERE r.name = s.name RETURN r

to be deleted

https://digitalexplorer.dxc.com/se/solutions/14434

https://digitalexplorer.dxc.com/se/solutions/14131

https://digitalexplorer.dxc.com/se/solutions/14398

https://digitalexplorer.dxc.com/se/solutions/14449

https://digitalexplorer.dxc.com/se/solutions/14423

https://digitalexplorer.dxc.com/se/solutions/14408

https://digitalexplorer.dxc.com/se/solutions/14131

https://digitalexplorer.dxc.com/se/solutions/14121

https://digitalexplorer.dxc.com/se/solutions/14457

