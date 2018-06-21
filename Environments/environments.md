EPRID : 207299
----
----
## External servers
These are the new DXC servers to be used for global pass integration 
Request raised : https://hpe.sharepoint.com/teams/everett-application-security/intake_portal/Lists/Application%20Security%20Intakes/Management%20View.aspx
### Development
 

|Name|IP|OS|vCPU|memory|disk|Role| Neo Version|
|----|----|----|----|----|----|----|----|
|ec4t02050.itcs.entsvcs.com|15.139.224.126	|RH 6.6	|4	|4 	|150|Frontend	|
|ec4t02049.itcs.entsvcs.com:7474|15.139.224.125	|RH 6.6	|4 	|4(8)	|150|	Backend	|3.1.8
 
### Integration
 

|Name|IP|OS|vCPU|memory|disk|Role|Neo Version|
|----|----|----|----|----|----|----|----|
|ec4t02051.itcs.entsvcs.com|	15.139.224.128|RH 6.6|	4 	|4	|150|Frontend|
|ec4t02052.itcs.entsvcs.com:7474| 	15.139.224.127|RH 6.6|	4 (8)|	4|	150|Backend|3.1.8

### Production
 

|Name|IP|DNS|OS|vCPU|memory|disk|Role|backup location|Neo Version
|----|----|----|----|----|----|----|----|----|----|
|ec4t02054.itcs.entsvcs.com|	15.139.224.130	|digitalexplorer.itcs.entsvcs.com	|RH 6.6	|4	|8	|150|Frontend	|/opt/mount1/filestore
|ec4t02053.itcs.entsvcs.com:7474 |15.139.224.129	 	| |RH 6.6	|4 (8)	|8	(16) |150|Backend|/opt/mount1/neo4j-community-3.0.4/data/databases/graph.db|3.1.8
----

# Future AWS environment

DEV
3 x Redhat  with 4 vCPU, 4 GB Memory 150GB storage

INT
2x Redhat with 4 vCPU 4 GB Memory 150GB storage

PROD
1 x build
1x Redhat with 4 vCPU 8 GB Memory 150GB storage
1x Redhat with 4 vCPU 16 GB Memory 250GB storage

need to understand backup options...

---



###  build server : http://ec4t01313.itcs.entsvcs.net:8080/login?from=%2F

## Events

username : digitalexplorer2017@outlook.com
password : S3rvicePl@tform@2016

NO LONGER USED


----
# (old) Development
### Project Name : degraph
 
####Servers
 
Build | 15.140.130.2 | ec4t01313.itcs.entsvcs.net |
Frontend	15.140.138.1	ec4t01314.itcs.entsvcs.net	
Backend	15.140.130.1	ec4t01315.itcs.entsvcs.net	http://ec4t01315.itcs.entsvcs.net:7474/browser/
 
## Production
Project Name : degphP
#### Servers
Frontend	15.140.138.2	ec4t01316.itcs.entsvcs.net	digitalexplorer.itcs.entsvcs.net
Backend	15.140.130.3	ec4t01317.itcs.entsvcs.net

 ##### Backups
The production database is backed up weekly, restore requests can be requests via the process here : https://hpe.sharepoint.com/sites/B2/ES/hpe-itio-data-protection/Pages/Request-a-Backup.aspx 
 

