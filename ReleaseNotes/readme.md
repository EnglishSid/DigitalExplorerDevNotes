
Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.2.4|DXC 2.2.4|DXC 1.2.6|DXC 1.1.9|-

### Release date : 

#### New
**Major**
- Trends : Achievement awards
- Agendas : Achievement awards
- Workspaces : Achievement awards
- Solutions : clear header for Partner Solutions
- Trends : added Partner solutions to trend information page
- Agendas - Revised layout of sunray diagram within the PDF export

**Minor**
- Workspaces : Updated Profile page
- Agenda : Updated Profile page
- Workspace : Achievement detail page
- Agenda : Achievement detail page
- Solutions : calculate relationship to DXC offering family

**Fixes**
- Link to workplace group within footer
- Solutions filter on offering families with double &'s in their name


----

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.2.4|DXC 2.2.4|DXC 1.2.6|DXC 1.1.9|-

### Release date : 23rd July 2018
#### New
- WWS data Sync (Major Offerings (DE solutions) and Sub Offering (DE features) data load from WWS master)


**Fixes**
- Solutions : industry icons
- Solutions : ensure only reference solutions are shown to non-authenticated users

----


Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.7|DXC 2.1.5|DXC 1.2.0|DXC 1.1.3|-

### Release date : 
#### New
**Major**
- Agendas : detailed reporting page for internal programs (accounts with and without agendas)

**Minor**
- Workspace : add scrolling when canvas is full


**Fixes**
- Solutions : ensure `my Solutions` are returned in user profiles
- Stories : fixed story banner images



----
Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.7|DXC 2.1.5|DXC 1.2.0|DXC 1.1.3|-

### Release date : 
#### New
**Major**
- Agendas : Allow client goals and KPI's to be selected for strategic initiatives
- Delivery Explorer : various endpoints to support the Delivery Explorer program

**Minor**
- Solutions: Revised solution model layout
- Solutions : dedicated landing page for Shareathon
- Solutions : Improved dataset and UX when adding DXC offerings
- Attachments : reworked attachments model to store "docType" within the dataset
- Platform : Constraint placed on TechnologyGroup.name

**Fixes**
- Agendas : Edit KPI's within client value chains
- Agendas : Templates can include "signals"
- Agendas : Use templates with training accounts
- Agendas : fixed R&D trend filter
- Solutions : remove tags fixed
- Solutions : allow jump to any tab during edit
- Solutions : fixed `back` from datasheet to results
- Trends : Link for near neighbours


----
Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.7|DXC 2.1.5|DXC 1.2.0|DXC 1.1.3|-

### Release date : 21st May 2018
#### New
**Major**
- Upgrade to Neo Enterprise 3.3.5 
- Agendas - Allow agendas and templates to be saved on initial set-up (no need to move to canvas)
- Solutions - Revised Add/Edit screens

**Minor**
- Trends - Ability to share direct link to a business areas within the industry trends
- Delivery Explorer - allow delivery explorer admin role to be assigned to users

**Fixes**
- Agendas - Fixed typo in new recommendation dock
- Agendas - scroll fix when adding multiple KPI's
- Agendas - ensure copied focus areas are formatted correctly.
- Agendas - BVF attachments saved correctly for templates
- Agendas - Ensure templates are correctly deleted
- Agendas - fixed issue with dropped trends on move
- Agendas - ensure KPI's and stakeholders can be added to default value chains
- Solutions - fixed save on edited motivations (retains only one copy)
- Solutions : Attachment fix
- Stories - Fixed date format in collaboration module

---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.7|DXC 2.1.5|DXC 1.2.0|DXC 1.1.3|-

### Release date : 2nd May 2018

#### New
**Major**
* Upgrade to Neo Enterprise (3.1.8)
* Agendas - Recommendation Engine
* Agendas - Copy or move a client disruptor between value chains

**Minor**
* Agendas - extended search to include description as well as name
* Solutions - revised UX for non-reference and solution types
* Trends - Show solution owners in "key contributors view"

**Fixes**
* Agendas - Ensure permissions are validated against users email and not name
* Agendas - return unique program name for accounts with more than 1 person assigned.
* Agendas - filter within program date range when program group selected - hide agendas outside of program dates.
* Stories - Allow authors to be added to existing stories
* Solution - ensure any assigned person can edit their solutions

---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.6|DXC 2.1.4|DXC 1.1.9|DXC 1.1.3|-

### Release date : 10th April 2018

#### New
**Major**
* BVR - Training agendas - allow any user to create an agenda under a training account.
* BVR - Internal programs and tracking for Innovation Agendas

**Minor**
* SE - CSV file importer updated
* SE - Clearly highlight if a solution is non referenable within the solution datasheet
* BVR - show manage / view templates on homepage
* GE - show node labels enabled by default

**Fixes**
* BVR - UX improvement for edit/export within summary view
* SE - Ensure search results are presented top of page
* DEW - minor UI fix


---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.5|DXC 2.1.3|DXC 1.1.8|DXC 1.1.2|-

### Release date : 27/03/2018

#### New
**Major**

* DE - Allow authentication users the option to edit the trend from the read UI

**Minor**
* Attachment file healthchecker and UI (Admin)
* Revised link to github in footer
* DE - Ensure stories page scales for mobile and tablet devices
* SE - results from matching trends stay in view
* BVR - updated defaults for Sunray diagram (labels on, size by innovation level)
* BVR - moved edit and export button to clearer position within the agenda summary view
* Stories - allow filter to be shared



**Fixes**
* SE - fixed Industry search from homepage
* SE - updated matching features query (removed dependency on description) 
* BVR - fixed autosave (ensure autosave functions after initial autosave trigger)
* DEW - Allow notes to be added to notes
---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.4|DXC 2.1.2|DXC 1.1.7|DXC 1.1.1|-

### Release date : March 17th

#### New
**Major**


**Minor**
* SE - Revised search endpoint - refactoring and support for date range search (/api/search)
* DE - Allow Business areas to be given a sort order (admin UI and user views updated)
* DE - Ensure authors are shown for new trends (during review)
* DE - Added event tracking to web analytics for Digital Stories


**Fixes**
* BVR - Ensure people assigned to accounts can update strategic programs
* BVR - Ensure accounts records are not copied when the region is changed
* BVR - PDF export includes all value chains - even if empty
* SE - Ensure attachments can be uploaded with DocType or custom value

---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.1|DXC 2.0.9|DXC 1.1.4|DXC 1.1.0|-

### Release date : 8th March

#### **New**
**Major**
* DE : Digital Stories

**Minor**
* BVR - Advanced actions dropdown for agendas and templates (copy, delete, share, make template)
* DEW - Allow trends to be added to a Workspace from the "trend on a page view"
* DEW - links from trends within a Workspace link to the "trend on a page view"
* Taxonomy alignment (changes to UKI & AMEA)


**Fixes**
* Ensure updates to Practice metadata are reflected in live (edit, add, delete)
* DE - Ensure industry links can be edited
* BVR - pull in selected accounts industry when creating from Template
* Profiles links from BVR, DE and DEW sites
* PDF exports for technology groups and some industries (missing header images)
* BVR - Ensure assigned people can edit copied agendas
---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.0|DXC 2.0.9|DXC 1.1.4|DXC 1.1.0|-

### Release date : 20th Feb 2018

####**New**
**Major**
* BVR - Quick edits within the Agenda summary

**Minor**
* BVR - Allow agenda templates to be shared (via URL link)

**Fixes**
* DE - Ensure industry links can be edited
* Ensure updates to Practice metadata are reflected in live (edit, add, delete)

---
Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.0|DXC 2.0.9|DXC 1.1.2|DXC 1.0.9|-

### Release date : 14th Feb 2018

####**New**
**Major**
*


**Minor**
* BVR - Introduced Pan Industry options for agenda templates


**Fixes**
* BVR - Auto filters within agenda canvas - filter down to the value chain.
* BVR - Ensure templates can be used to created another template
* BVR - Ensure BVF images are dropped if edit is abandoned 

---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.1.0|DXC 2.0.9|DXC 1.1.1|DXC 1.0.9|-

### Release date : 12th Feb 2018

####**New**
**Major**
* BVR - Agenda Templates

**Minor**
* Clearer order on the user menus, privileged access moves to clear section
* Footer - Added link to enhancement and issue site
* DXC Industry Taxonomy alignment (1)
* SE - Removed actors from solution model view (duplicated information)
* SE - Sort order applied to plans within solution model view
* SE - Ensure matching features dialog remains in view for users.
* SE - Revised SE homepage
* DE - Revised homepage (9th industry)
* DE - new trend field validations updated
* BVR - Allow a person to be assigned to any role within an account


**Fixes**
* Autohide appblock or menu
* SE - ensure whitespaces are ignored when searching for contacts
* SE - login from search results page, returns user to search results
* SE - Ensure Contacts are not dropped during edits
* SE - ensure person node is not delete if no longer related to any nodes
* SE - form validation for file uploads updated to check for valid name
* DE - only show reference/searchable solutions on DXC Solutions tab
* DE - link to trend search results via header search
* DE - search header links to search results page
* BVR - only show reference/searchable solutions on DXC Solutions tab

---

Trends|Solutions|Agendas|Workspaces|Explorer
|----|----|----|----|----
|DXC 1.0.9|DXC 2.0.8|DXC 1.1.0|DXC 1.0.8|-

### Release date : 29th Jan 2018

####**New**
**Major**
* DE - Revised layout of business and technology trends (DXC design)
* DE - Matching Solutions added to "Trends on a page" view
* DE - Contributors added to "trends on a page" view
* SE - Revised layout for feature table (show details by default)
* SE - Allow matching features to be filtered based on Solution type


**Minor**
* SE - Ensure all properties are shown when adding new feature
* DE - Removed "workplaces" counts from "most referenced trends"
* DE - Renamed "Mega Trends" to "most connected trends"

**Fixes**
- BVR - Fixed person2account defect
- BVR - Ensure Create account isn't locked for assigned users
- SE - Shared and new feature fixes for new solution plans
- SE - saving of new contacts/roles during edit
- BVR - Fixed dates in old agendas (had old date format)
- SE - Removed old "FEATURES" relationship from database - no longer used in code
- SE - Ensure matching Features only returns feature name once; even when shared.

---

DE|SE|BVR|DEW|GE
|----|----|----|----|----
|DXC 1.0.7|DXC 2.0.6|DXC 1.0.7|DXC 1.0.7|-

### Release date : 15th Jan 2018

####**New**
**Major**
- WWS : Reference to Digital Explorer within the What We Sell Tools section
- DE : New stats and trend on a page views
- SE : build solution from existing features 
- BVR : Present matching Solutions for agenda trends
- DXC Brand alignment

**Minor**
- Taxonomy alignment (Business Trends)
- SE : New ratings and action layout
- SE : New back button within solution datasheet
- SE/DE : Allow users to view workspaces after adding trend or solution
- SE : Ability to drag and drop supporting media during solution creation
- SE : Improved adding solution contacts form
- GE : Show connected/common features within Solutions
- Admin : User contribution KPI's 

**Fixes**

- SE : Ensure supporting document files can named with non-roman characters 
- SE : improved validations when adding motivations - to ensure duplicate motivations are not added.
- date format alignment across the platform

---

DE|SE|BVR|DEW|GE
|----|----|----|----|----
|DXC 1.0.6|DXC 2.0.5|DXC 1.0.6|DXC 1.0.6|-

#### Release date : 27/11/17

**New**
- SE : Solution Types
- BVR : Copy Agenda
- DEW : email notification of member invites
- BVR : Check if user is assigned to an account before presenting "create form"
- Branding update 1 : Digital Explorer module names updated
- DE : Updated other trend references to allow users to click and view
- DEW : Ability to click and view solution datasheet


**Fixes**
- SE : Ensure full solution model is shown in datasheet view
- BVR : Extend text field for program descriptions
- BVR : Sunray labels shown on click (option to show all)
- DE : new workspace dialog fix

---

DE|SE|BVR|DEW|GE
|----|----|----|----|----
|DXC 1.0.5|DXC 2.0.5|DXC 1.0.5|DXC 1.0.5|-

#### Release date : 14/11/17

**New**
- SE : Business motivations - search and select matching trends
- SE : sort by last seen date
- BVR : Signals report
- DEW : total workspace counter added to about page

**Fixes**
- BVR/DEW : Fixed high resolution screen issues
- BVR : ensured users can only add image files as BVF
- SE : Share link fixed
- BVR : agenda manager filters issue fix
- BVR : fixed <null> value issues


---

DE|SE|BVR|DEW|GE
|----|----|----|----|----
|DXC 1.0.2|**DXC 1.0.2**|**DXC 1.0.2**|DXC 1.0.1|-

#### Release date : 25/10/17

**New**
- **Moved to digitalexplorer.dxc.com**
- BVR : Autosave every 30 minutes
- BVR : Edit status within summary view
- BVR : Allow agenda managers to view all agendas and all strategic initiatives (new option within menu)
- DE platform stats (digitalexplorer.dxc.com/stats)

**Fixes**
- BVR : Session timeout
- BVR : Allow duplicate trends to be marked as focus areas and selected into different programs.
- DE : Sub-industry lists
- SE : Ensure all features are shown and can be selected for solution plans
- DE : Sub-industry sort order

---
DE|SE|BVR|DEW|GE
|----|----|----|----|----
|**DXC 1.0.1**|**DXC 1.0.1**|**DXC 1.0.1**|**DXC 1.0.1**|-

#### Release date : 23/10/17

**New**
- BVR: Allow users to add their BVF as an image to an innovation agenda
- BVR : Agenda status field added
- DE - alignment with innovation models (emerging to R&D)
- SE : Simplified solution submission - consolidate motivations into single object class, auto generate the feature set/base plan
- GE\SE : Full solution set only available to logged in users
- Platform admin module : Assign roles directly within application

**Fixes**
- DEW: Ensure note text is shown 
- DE : Reordered trend information box - other references moved to bottom - ensure solutions and workspaces are always shown
- DE : Optimized the PDF export file size, corrected <null> data error, ensured correct industry description is shown.
- GE : revised most connected trends path, shows industry and sub-industry first
- SE : Hide menu 
- SE : fixed tour on first load 
- SE/BVR : return @dxc.com addresses for registered ES people - no look-up to LDAP if present in DE
- BVR : fixed client value chain text in pdf export
- SE : ensure solution model is shown on first load

---

|DE|SE|BVR|DEW|GE
|----|----|----|----|----
|**DXC 1.0.0**|**DXC 1.0.0**|**DXC 1.0.0**|**DXC 1.0.0**|-

### Release date : 6.10.2017


**New**
- DE : Added create and review dates to trends
- BVR:  Export summary to PDF (planned)
- BVR : Insights : show total agenda count 
- BVR : Insights : toggle all industries within graph view
- BVR : Insights : Info on mouseover
- DE: Search result page
- DEW: First release


**Fixes**
- GE - Revised various paths within the explorer module
- BVR - sizing of nodes based on innovation level corrected
- BVR - Save of value chains properties after first save
- DE - layout update for industries with more than 6 sub-industries
- DE - Show only business areas with trends
- DE - edit trends via filters


---
|DE|SE|BVR|GE
|----|----|----|----
|**2.0.8**|**3.0.8**|1.0.6|1.0.0

Release date : 31/08/2017

####**New**
--

####**Fixes**

* DE : Fixed defect introduced with new "review date" property for trends.   Now shows trends with or without review date
* SE : link to BVR from SE app block
* SE : link to SE tour corrected within footer



---
|DE|SE|BVR|GE
|----|----|----|----
|**2.0.7**|3.0.7|**1.0.6**|**1.0.1**|

Release date : 30/08/2017

**New**
* GE : Added most connected trends
* GE : Show supporting media and images within explorer view
* GE : Option to show reference solutions only
* BVR - Chrome browser check
* BVR - headmap & cluster views of most referenced trends
* BVR - Demand curve for any selected disruptor
* BVR - auto filter dock based on selected business area



---
|DE|SE|BVR|GE
|----|----|----|----
|**2.0.5**|3.0.7|**1.0.5**|1.0.1|

Release date : 24/08/2017

**new**
* BVR : Auto populate industry value chains into new agendas
* BVR : Add business areas values to disruptors (Product, Service, Process, Business Models)
* BVR : Agenda summary design
* BVR : Interactive table to present innovation and risk levels – mix and match dimensions.
* BVR : Edit from summary 
* DE : Added source & reference properties to trends 