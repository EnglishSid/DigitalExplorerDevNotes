Scripts for the June 2019 release of playbook shelves.

Create a private shelf for all playbook authors
Move their books into their starting shelf



//find people who have created a book
match (pb:Playbook)<-[:CREATED]-(p:Person) 
with DISTINCT p,pb
//Create a new private group for them and make them the owner
MERGE (pbs:PlaybookShelf {name:p.email+'Shelf', isPrivate:true, BannerTextColour:BLACK, bannerImageURI:'null'})<-[:MEMBER_OF {role:'owner'}]-(p)
with pbs,pb,p
//move their workspaces into the group
MERGE (pb)-[:BELONGS_TO]->(pbs)


---
## Email message to playbook authors


Digital Explorer - New feature: Playbooks Shelves

All,

We have just released an update to the Digital Explorer Playbooks module - The module now supports playbook shelves.

This update improves the way authors can organize their content.   Each playbook is assigned to a shelf (1 shelf per book) and the shelf as well as the playbook can be marked as public or private.

A private shelf is only shown to assigned members and any contacts within the playbooks.
A public shelf is shown to all Digital Explorer users
some finer points on public shelves...
    A private book on a public shelf is only visible to the contacts named within the playbook
    A DXC only book on a public shelf is only visible to DXC Employees

Changes to existing playbooks
All of your existing playbooks have been moved to a new "shelf" called "<your name> - shelf" and currently this shelf has been marked as private (i.e. only you and any playbook contacts will see the shelf on the playbooks homepage).   You can change the playbook settings by selecting the "settings" icon whist viewing the shelf; as well as the privacy settings, you can also change the name and banner image to be shown on the playbooks homepage.

Small F.A.Q

**Can I create a new shelf and move an existing playbook to it?**
Yes - simply edit the playbook and create a new or another existing shelf to assign the playbook into.


*I have shared a direct link to an existing playbook, will this still work?*
Yes - all direct links to the playbooks remain the same.

If you have any questions or comments, please let me know.


