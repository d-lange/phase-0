# How does tracking and adding changes make developers' lives easier?
Tracking and adding changes makes it easier for developers to see the workflow and collaboration involved in the creation. If there is also a problem in the code, they can go back to a previous version of the code that worked properly.
## What is a commit?
A commit is essentially a "save" of what you coded. It commits it to the repository.
### What are the best practices for commit messages?
It is best to explain what and why than how. A developer will see how it was done, but most importantly want to know what and why it was changed or modified.
#### What does the HEAD^ argument mean?
This means the last commit you were on, rather than the commit you are currently on using the HEAD argument. This would be used if you wanted to actually change files you already committed.
##### What are the 3 stages of a git change and how do you move a file from one stage to the other?
The 3 stages are 1)making a change to a new branch of the master and perhaps a new directory or file. 2) using git status to track the changes being made and 3) pushing the changes to GitHub and merging everything so your git and gitHub are the same.
###### Write a handy cheatsheet of the commands you need to commit your changes?
: git add "filename"(file you changed)
: git commit -m "commit message"
###### What is a pull request and how do you create and merge one?
A pull request is pushing your new branch with changes to GitHub. You create one by the command git push origin "branch-name". Then on GitHub you can compare and pull request. Once created, it is visible to developers. The 2nd step is merging the changes into the master branch by clicking merge pull request and confirm merge. You can then delete the branch you made to write those changes before merging
###### Why are pull requests preferred when working with teams?
I believe pull requests are preferred when working with teams it is an excellent tool for reviewing code and the different team members who are contributing.