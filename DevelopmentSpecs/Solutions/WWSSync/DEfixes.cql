MATCH (f:Feature {name:''})
set f.name=""
with count(*) as dummy
MATCH (f:Feature {name:'Data Classification Services'})
set f.name="Classification"
with count(*) as dummy
MATCH (f:Feature {name:'Enterprise Data Warehousing Services'})
set f.name="Enterprise Data Warehousing"
with count(*) as dummy
MATCH (f:Feature {name:'Master Data Management Services'})
set f.name="Master Data Management"
with count(*) as dummy
MATCH (f:Feature {name:'Comprehensive Applications Threat Analysis ServicesMigrating'})
set f.name="Applications Security"
with count(*) as dummy
MATCH (f:Feature {name:'Applications Management Services'})
set f.name="Applications Management"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Managed Services for AWS'})
set f.name="AWS Cloud Services"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Managed Services for Microsoft Azure'})
set f.name="Managed Services for Microsoft Azure"
with count(*) as dummy
MATCH (f:Feature {name:'Applications Modernization and Transformation'})
set f.name="SPLIT - Applications Modernization and Transformation"
with count(*) as dummy
MATCH (f:Feature {name:'Service Integration and Management'})
set f.name="Multisupplier Integration and ITSM-ESM Services"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Platform as a Service for SAP'})
set f.name="PaaS for SAP"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Digital Workforce for Oracle Cloud Services'})
set f.name="DXC Digital Workforce for Oracle Cloud"
with count(*) as dummy
MATCH (f:Feature {name:'Mobile Enterprise Services'})
set f.name="DXC Mobile Enterprise Services"
with count(*) as dummy
MATCH (f:Feature {name:'Collaboration Services'})
set f.name="DXC Collaboration Services"
with count(*) as dummy
MATCH (f:Feature {name:'Hewlett Packard Enterprise Services for Office 365 Migrating'})
set f.name="DXC Services for Office 365"
with count(*) as dummy
MATCH (f:Feature {name:'Enterprise Services for Google G Suite'})
set f.name="Enterprise Services for Google Apps for Work"
with count(*) as dummy
MATCH (f:Feature {name:'File Sync and Share Services'})
set f.name="DXC File Sync and Share Services"
with count(*) as dummy
MATCH (f:Feature {name:'Messaging Services'})
set f.name="DXC Messaging Services"
with count(*) as dummy
MATCH (f:Feature {name:'Virtual Desktop and Applications Services'})
set f.name="DXC Virtual Desktop and Applications Services"
with count(*) as dummy
MATCH (f:Feature {name:'Content and Records Management Services'})
set f.name="Content and Records Management"
with count(*) as dummy
MATCH (f:Feature {name:'Archiving Services'})
set f.name="Archiving"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Omnilocation'})
set f.name="OmniLocation"
with count(*) as dummy
MATCH (f:Feature {name:'Platforms - Cloud and On Prem'})
set f.name="Platforms - Cloud and On Prem"
with count(*) as dummy
MATCH (f:Feature {name:'DXC Analytics Platform'})
set f.name="Analytics Platform"
with count(*) as dummy
MATCH (f:Feature {name:'Data Workload Optimization Services'})
set f.name="Data Workload Optimization"
with count(*) as dummy
MATCH (f:Feature {name:'As a Service Solution for Hadoop'})
set f.name="Hadoop Solutions"
with count(*) as dummy
MATCH (f:Feature {name:'Business Intelligence Modernization Workshop Services'})
set f.name="Data Discovery Experience"
with count(*) as dummy
MATCH (f:Feature {name:'Big Data Discovery Experience Services'})
set f.name="Data Discovery Experience"