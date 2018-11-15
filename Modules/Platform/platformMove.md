## Infrastructure

Source: GitHub <https://github.dxc.com/DigitalExplorer>  
Servers: Microsoft Azure <https://portal.azure.com>  
CI/CD: Jenkins <https://jenkins.platformdxc.com/job/DigitalExplorer>  

## Monitoring

For each backend instance an Application Insights service is added on Azure. 

#### Healthcheck
Healthcheck endpoint is queried every 5 minutes by Azure service from 6 different locations:
* North Europe
* West Europe
* West US
* Central US
* East US
* Austraila East
Max timeout is set for 30 seconds and response status code must equal 200.

#### Alerts
Alerts are sent to Digital Explorer team by email when healthcheck stops to respond for certain amount of time. Triggers are based on environment:
* DEV - Fail of at least 5 locations for longer than 15 minutes.
* INT - Fail of at least 5 locations for longer than 15 minutes.
* PROD - Fail of at least 3 locations for longer than 5 minutes.

#### Logs
Logs from application are available in Application Insights service as well as on the working machine itself.
