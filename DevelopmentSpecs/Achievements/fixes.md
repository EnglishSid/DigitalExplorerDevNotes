fixes

drop

MATCH (a:Achievement {name:'FamilyAppsServices'}) detach delete a

match (P:Practice {name:'Apps Services and Program Excellence'})detach delete p


rename image

MATCH (a:Achievement {name:'FamilyInsurance'})
Set a.badgeImageURL='assets/images/badges/familyinsurance.png'
return a
