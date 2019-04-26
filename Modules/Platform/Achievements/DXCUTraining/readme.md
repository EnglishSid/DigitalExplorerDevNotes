
MERGE (m:META_AchievementType {name:'platform'}) 

MERGE (a:Achievement {name:'DigitalExplorerWhiteBelt', shortName:'DXC Digital Explorer WhiteBelt' , description:'Completed the DXC Digital Explorer White Belt University Course', badgeImageURL:'assets/images/badges/whitebelt.png', module:'platform', order:'1'})



MATCH (a:Achievement {module:'platform'}), (m:META_AchievementType {name:'platform'}) 
MERGE (a)-[:ofType]->(m)
return a,m  


(p)-[:HAS {creationDate:pb.creationDate}]->(a)


----

davidstevens@dxc.com,12-Apr-19,1555027200000
emitchell8@dxc.com,12-Apr-19,1555027200000
tlhotak@dxc.com,12-Apr-19,155502720000,15550272000000
philip.mullis@dxc.com,12-Apr-19
shankar@dxc.com,15-Apr-19,1555286400000
naresh-datta.h-p@dxc.com,15-Apr-19,1555286400000
rudolf.klein@dxc.com,15-Apr-19,1555286400000
sarah.rich@dxc.com,15-Apr-19,1555286400000
ahameliushul@dxc.com,16-Apr-19,1555372800000
mkairys@dxc.com,18-Apr-19,555545600000



### Java long date convertor

https://www.epochconverter.com/
