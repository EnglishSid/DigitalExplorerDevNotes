# HRDD Subscriptions

EPR ID : 207299

type : file
header : yes
delimited
utf-8
unix
extract full : yes



 ## Employee data


Data source : HRDD
object : workday
data object : consolidate full employee data


transport type : non
filename : DXCDEHRDD.csv


Fields


employeeid
name
business_unit
location
location_desc
email_addr
manager_email



## Skills data

transport type : non
filename : DXCDFPHRDD.csv
header : yes
delimited
utf-8
unix
extract full : yes


Saba cloud
data object : Saba Cloud Skills > Skills Assigned to Employee reporthi


