MATCH (f:Feature {name:'Classification'})
set f.name="Data Classification Services"
with count(*) as dummy
MATCH (f:Feature {name:'Enterprise Data Warehousing'})
set f.name="Enterprise Data Warehousing Services"
with count(*) as dummy
MATCH (f:Feature {name:'Master Data Management'})
set f.name="Master Data Management Services"
with count(*) as dummy
MATCH (f:Feature {name:'Applications Security'})
set f.name="Comprehensive Applications Threat Analysis Services"
with count(*) as dummy
MATCH (f:Feature {name:'Applications Management'})
set f.name="Applications Management Services"
with count(*) as dummy
MATCH (f:Feature {name:'AWS Cloud Services'})
set f.name="DXC Managed Services for AWS"
with count(*) as dummy
MATCH (f:Feature {name:'Managed Services for Microsoft Azure'})
set f.name="DXC Managed Services for Microsoft Azure"
with count(*) as dummy
MATCH (f:Feature {name:'SPLIT - Applications Modernization and Transformation'})
set f.name="Applications Modernization and Transformation"
with count(*) as dummy
MATCH (f:Feature {name:'Multisupplier Integration and ITSM-ESM Services'})
set f.name="Service Integration and Management"
with count(*) as dummy
MATCH (f:Feature {name:'PaaS for SAP'})
set f.name="DXC Platform as a Service for SAP"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Digital Workforce for Oracle Cloud'})
set f.name="DXC Digital Workforce for Oracle Cloud Services"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Mobile Enterprise Services'})
set f.name="Mobile Enterprise Services"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Collaboration Services'})
set f.name="Collaboration Services"
with count(*) as dummy
MATCH (f:Feature {name:'Enterprise Services for Google Apps for Work'})
set f.name="Enterprise Services for Google G Suite: Legacy"
with count(*) as dummy
MATCH (f:Feature {name:'DXC File Sync and Share Services'})
set f.name="File Sync and Share Services"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Messaging Services'})
set f.name="Messaging Services"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Virtual Desktop and Applications Services'})
set f.name="Virtual Desktop and Applications Services"
with count(*) as dummy
MATCH (f:Feature {name:'Content and Records Management'})
set f.name="Content and Records Management Services"
with count(*) as dummy
MATCH (f:Feature {name:'Archiving'})
set f.name="Archiving Services"
with count(*) as dummy
MATCH (f:Feature {name:'Omnilocation'})
set f.name="DXC OmniLocation"
with count(*) as dummy
MATCH (f:Feature {name:'Platforms - Cloud and On Prem'})
set f.name="Platforms - Cloud and On Prem: Legacy"
with count(*) as dummy
MATCH (f:Feature {name:'Analytics Platform'})
set f.name="DXC Analytics Platform"
with count(*) as dummy
MATCH (f:Feature {name:'Data Workload Optimization'})
set f.name="Data Workload Optimization Services"
with count(*) as dummy
MATCH (f:Feature {name:'Data Discovery Experience'})
set f.name="Big Data Discovery Experience Service"