# GIT workflow
Git repo : https://github.houston.entsvcs.net/WWBGraph 
### Branching model 

#### Naming conventions examples
I suggest dividing branches into 3 categories (worked with that kind of schema before, it worked well):
* Features
  naming: feature/XXX_-_the_feature_i_am_working_on
* Refactoring
  naming: refactoring/eg_organize_imports_or_use_composition_instead_of_inheritance
* Defects
  naming: bug/subindustries_are_empty


### Comitting

When trying to commit your work use below convention. Commit message should depend on the branch type you are currently working on.
Features
message: XXX Add HololensSimulator class
Refactoring
message: RF# Remove useless comments
Defects
message: XXX Fix typo in url address of an external service

### Workflow
Git provides us with an ability to create branches.

The main flow would be to create some local branch using above convention, like:

~~~~
git checkout -b feature/999_-_the_feature_i_am_working_on
~~~~

then comitting your work (more on that here)

~~~~
git commit -m "999 Add HololensSimulator class"
~~~~

and then pushing it to remote repository (thus, creating remote branch):

~~~~
git push origin feature/999-the_feature_i_am_working_on
~~~~



Github has a nice way of handling branches creating pull requests.

Click "New pull request". After that, you can review open pull requests (including your newly created one) HERE
When you click on one of pull request you will something similar to this:

Assignees is where you can add reviewers to your code; they will get an email with notification that there is a new change waiting for review. You can ping people on Skype as well to let them now that your change is urgent. Reviewers might comment your code, ask questions or propose ideas to improve the solution.
When you've made some changes based on reviewer's comments, you go down the same path as before: commit, and then push to the same branch.
Important question is how many developers should approve the change before merge? I personally suggest it to be at least 2 developers, unless it's a very minor change.
Files changed is a tab where anyone can review the changes introduced in that pull request.
When reviewer approves your changes, you will see that notification.
After adequate number of people approves the changes, the branch can be merged. You will see a notification for that. When the branch is merged it also means, that the pull request is closed, and you can (and should) delete remote branch for that PR (pull request). Github shows a button for that. Warning! Branch should be merged by the author of Pull Request  

###Conflicts
When your branch hasn't been pushed to remote yet, you can still update it to latest code using those commands:

~~~~
git stash
git checkout master
git pull --rebase
git checkout your_branch
git rebase master
git stash pop
~~~~
When your branch has already been pushed to remote, you can update it to latest code using those commands:

~~~~
git stash
git checkout master
git pull --rebase
git checkout your_branch
git merge master
git commit
git stash pop
~~~~

