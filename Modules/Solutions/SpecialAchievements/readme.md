# Special Achievements

Notes and methods for creating one-off achievements for key programs


---

- badge image 250px x 250px
- must align to DXC colours
- Must leverage or compliment DXC standard icons


---

# Approach
ad-hoc script to assign a new achievement to the contacts of a solution for a given program; e.g. Technical Excellence 2019



### Example badges

![](images/example.png)



---

### Scripts

#### Create the achievement node

**Remember to update the values**

~~~
MERGE (a:Achievement {name:'TechnicalExcellence2018', shortName:'Technical Excellence 2018', description:'Submitted solution for Technical Excellence 2018', badgeImageURL:'assets/images/badges/tc18.png', module:'Solutions', order:'50'})
~~~

#### Assign to users

1. grab the right tag
2. find the people with `ASSIGNED` relationships


### Including with the DE codeset

- Create a new "badges" branch on each of the main module repos
- upload the new .png file into `src/assets/images/badges`
    ":trophy: new badges for solution events"
- create a new pull request `badges` > `development`
"7 badge images related to the solution events.
ensure these show on user profiles within each module"

#### Repos to update

- [ ] dxc-digitalexplorer-roadmaps`
- [ ] dxc-digitalexplorer-trends`
- [ ] dxc-digitalexplorer-workspaces`
- [ ] dxc-digitalexplorer-solutions`

