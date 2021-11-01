# Various Clean-up scripts

## Switch a users shelf to private


~~~
match (pbs:PlaybookShelf {name:'blah'})
set pbs.isPrivate = true 
return pbs
~~~