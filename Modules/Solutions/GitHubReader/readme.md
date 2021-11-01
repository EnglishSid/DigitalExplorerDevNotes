# Digital Explorer GitHub Solution Sync

## Overview
The Digital Explorer Solution Sync GitHub application provides the means for solution owners to document their solutions within the DXC GitHub instance and push their solution model into Digital Explorer; thus allow other users the means to discover and reuse the solution within their opportunity.


![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Concept.png)<br>


## Information Model Overview

![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/SolutionModel.png)<br>

## Template overview

The application creates the following templates:


|Template File|Description|Mandatory|
|---|---|---|
|00-BaseInformation.md|solution name, type, status and description|Y
|01-BusinessView.md|Value Proposition and details of the overall business value the solution provides|Y
|02-Motivations.md|Motivations and Trends associated with the solution.  Trend names can be sourced from the Trends module within [Digital Explorer](https://digitalexplorer.dxc.com)|N
|03-FeaturesAndOfferings.md|List of Features and DXC offerings|N
|03a-Offerings-readOnly.md|**Read only** Reference document of the current DXC offerings|NA
|04-TechnicalModel.md|Any supporting technical information for the solution|N
|05-PatternReferences.md|NOT CURRENTLY USED|N
|06-Contacts.md|List of key solution contacts and their role|Y
|06a-Roles-readOnly.md|**Read only** Reference document of the current available roles|NA
|07-AccountAndIndustry.md|Name of the account and associated industries for the solution|Y
|08-ClientTestimonial.md|Details of any customer implementations associated with the solution|N
|09-Media.md|Any supporting media or links|N


### :warning: IMPORTANT INFORMATION :warning:

- A number of fields support markdown formatting, for details of the supported markdown structure, please review this [guide](https://jfcere.github.io/ngx-markdown/)
- The file structure and guidance within each template must be followed; failure to do so will result in a failed load or sync into Digital Explorer.
- The markdown tables MUST be documented correctly; i.e. close out each table row with the required `|`

---

# Installing

To install the Digital Explorer GitHub reader, follow these steps:

1. Create a repository on Github.dxc.com (The repository can be left empty)
2. Access the Digital Explorer Sync application on Github
   1. Dev : https://github.dxc.com/github-apps/solutionreaderdev
   2. INT : https://github.dxc.com/github-apps/digital-explorer-githubreader-int
   3. Production : https://github.dxc.com/github-apps/digital-explorer-githubreader

![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Installing.png)<br>

1. Select 'Configure'

2. Select the required Organisation<br>
![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Installing2.png)<br>

1. Select the required repository<br>
![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Installing3.png)<br>

1. Select `Save` - the Digital Explorer reader has now been installed.

A confirmation message is shown<br>
![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Installing4.png)<br>

<br>


## First time installation
The first time you install the application, you will need to approve the access requests for the application.

1. Select `Applications` in your profile page

2. for the GitHub reader you will see a request to "Review Request"

![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/AccessRequest1.png)<br>

![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/AccessRequest2.png)<br>




## Uninstalling
To uninstall the Digital Explorer solution reader, follow these steps: 

1. Access your github.dxc.com profile<br>
   ![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Uninstall1.png)<br>

2. Select `Applications` from the left menu<br>
    ![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Uninstall2.png)<br>

3. In the list you should see `SolutionReader` Select `Configure` <br>
![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Uninstall3.png)<br>

4. You can either remove the reader from a single repository or completely remove the application from your account and all repositories<br>

![image](https://github.dxc.com/DigitalExplorer/DeveloperNotes/blob/master/Modules/Solutions/GitHubReader/images/Uninstall4.png)<br>


## How it works

By installing the application into a repository the solution templates are created within the users repository; any **approved pull requests and merges into the *master* branch trigger the application** to review each template file and either add or update the solution within Digital Explorer.

## F.A.Q

Q: I've directly updated my *master* branch, will the solution synchronization be triggered?
A: **No**, only approved merges into the *master* branch via a pull request will trigger the synchronization.

Q: Can I add new sections to the templates?
A: **No**, the template files are structured to align with the Digital Explorer solution model; any changes to the structure of the templates puts at risk the success 


More details on the integration and best practices, can be viewed [here](https://github.com/dxc-technology/dxc-digitalexplorer/blob/master/Modules/Solutions/GitHubReader/readme.md).