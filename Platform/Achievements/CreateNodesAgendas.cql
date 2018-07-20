//1st Agenda
MERGE (a:Achievement {name:'OnboardAgendas', shortName:'Onboard Agendas', description:'Member of an account team with an innovation agenda', badgeImageURL:'assets/images/badges/onboardagendas.png', module:'Agendas', order:'1'})
with count(*) as dummy
//Template
MERGE (a:Achievement {name:'HelpingHands', shortName:'Helping Hands', description:'Create your first Agenda template', badgeImageURL:'assets/images/badges/helpingHands.png', module:'Agendas', order:'2'})
with count(*) as dummy
//Strategic initiative
MERGE (a:Achievement {name:'TakingTheNextStep', shortName:'Taking the next step', description:'Member of an account team who have created a strategic initiative', badgeImageURL:'assets/images/badges/takingthenextstep.png', module:'Agendas', order:'3'})
with count(*) as dummy