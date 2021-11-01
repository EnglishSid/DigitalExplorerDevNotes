

//1st Solution
MERGE (a:Achievement {name:'SolutionChampion', shortName:'Solution Champion', description:'Created a Solution from an Idea', badgeImageURL:'assets/images/badges/solutionChampion.png', module:'Solutions', order:'2'})
with count(*) as dummy


MATCH (a:Achievement {module:'Solutions'}), (m:META_AchievementType {name:'Solution'}) 
MERGE (a)-[:ofType]->(m)
return a,m  

