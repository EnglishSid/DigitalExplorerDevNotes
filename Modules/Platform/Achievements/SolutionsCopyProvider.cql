//Solution copy and provider
MERGE (a:Achievement {name:'SolutionCopy', shortName:'Copied an existing solution' , description:'Copied an existing solution', badgeImageURL:'assets/images/badges/solutionCopy.png', module:'Solutions', order:'10'})
with count(*) as dummy
MERGE (a:Achievement {name:'SolutionProvider', shortName:'Solution Provider' , description:'A solution you are assoicated too within the system has been copied/reused', badgeImageURL:'assets/images/badges/solutionProvider.png', module:'Solutions', order:'10'})


# Relationships

// Meta Type

match (ma:META_AchievementType {name:'Solution'}),(a:Achievement {module:'Solutions'})
merge (a)-[:ofType]->(ma)
return ma,a

