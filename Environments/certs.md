In order to install a valid HTTPS certificate on the server each server needs to registered for an internal certificate.

Details are available on the HPE IT page : https://myitsupport.ext.hpe.com/myITsupport/ITSArticle?ArticleNumber=000001599

**DXC Links**
- To request your certificate with Entrust please fill out the form here: https://hpe.sharepoint.com/sites/B2/ES/ess/Pages/ssl-certificate-request-form.aspx
- Frequently Asked Questions: https://hpe.sharepoint.com/sites/B2/ES/ess/Pages/ssl-certificate-frequently-asked-questions.aspx
- Main SharePoint/Certificate Types: https://hpe.sharepoint.com/sites/B2/ES/ess/Pages/ssl-certificates.aspx 
- CSR/Installation help: https://www.entrust.com/get-support/ssl-certificate-support/installation-help/ 
- CSR decoder page: https://certlogik.com/decoder/ 


#### Generating a CSR for each server

SSH into the target server and run the following command
 ```
openssl req -new -newkey rsa:2048 -nodes -keyout dxccorp.key -out dxccorp.csr
```



**Update for DXC**
~~~
Country Name : US
State : Virginia
Locality name : Tysons
Org Name : DXC Technology
Org Unit : Servers
Hostname : <full hostname>
email : press enter
challenge password : <password>
optional company : press enter
~~~

The .key and .csr are now available to be transferred into the request, use WINSCP to transfer the files to your local machine.

Values for HPE IT form
ED Global group : WWB.Admin
EPR-ID : 201261
DXC EPR-ID : 207299


Parameters for csr generation (these are validated during the creation of the key and must match the HPE requirements)
~~~
Country Name : US
State : California
Locality name : Palo Alto
Org name : Hewlett Packard Enterprise Company
Org Unit : Servers
hostname : full hostname
email : press enter
challenge password : WWB.Graph
optional company : press enter
~~~