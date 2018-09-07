//1st Workspace
MERGE (a:Achievement {name:'OnboardWorkspace', shortName:'Onboard Workspace', description:'Create your first workspace', badgeImageURL:'assets/images/badges/onboardWorkspace.png', module:'Workspace', order:'1'})
with count(*) as dummy
//Membership
MERGE (a:Achievement {name:'In the Club', shortName:'In the Club', description:'Added as a member of an existing workspace', badgeImageURL:'assets/images/badges/intheclub.png', module:'Workspace', order:'2'})
with count(*) as dummy
