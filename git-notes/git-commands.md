
# GIT command line usage

## General commands

|Command|Description|
|----------|:-------------:|
|`git log`|shows the commit history|
|`git log -p`|to show the particular changes that has happened|
|`git log --all --decorate --oneline --graph`|to show a neat and detailed graph of the changes|
|`git diff`|shows difference between current working tree and the staging area|
|`git diff --staged`|to show the differences between the staging area and last commit|
|`git diff <other-branch-name>`|to comapare with another branch|
|`git diff <branch1-name>..<branch2-name> -- <file>`|To get difference between single file in 2 branches|
|`git rm <filename>`|removes the file from the directory as well as from the staging area|
|`git checkout -- <filename>`|replace changes we've made to a file in the working tree to the version it was in the staging area (undo working tree change)|
|`git reset HEAD <filename>`|to replace it with the last commit (undo staging of files)|
|`git checkout <commit-hash> -- <filename>`|if we had a file in an earlier commit but we want it back (restore a file from previous commit)|
|`git log -- <filename>`|to show commits that happened to a particular file|
|`git branch <branch-name>`|creates a new branch at the location of HEAD|
|`git branch`|to display a list of branches|
|`git checkout <branch-name>`|moves the head to the <branch-name>|
|`git branch --merged`|shows the branches which have been merged. Always check the merged branches before deleting|
|`git branch -d <branch-name>`|delete branche <branch-name>|
|`git checkout -b <new-branch name>`|creates a new branch and goes to it|
|`git commit -a`|adds and commits|
|`git merge <branch-name>`|gets the changes of <branch-name> into current branch.|
|`git stash`|we have made some changes in our working tree, but we have not staged or commited them. Now, trying to checkout to another branch, git will stop us from doing this. This is because your current changes will be lost. Now, using 'git stash', git will save our changes which we can get to later (without commiting)|
|`git stash save <message>`|to label a particular stash with a message|
|`git stash list`|gives the list of stashes. with -p will show what were the changes|
|`git stash apply`|will apply the stashes to the working directory for adding and commits. But the stashes will still remain to reuse later as well|
|`git stash apply <labelname>`|to apply a specific stash|
|`git stash pop`|apply the stashes and delete the stash|
|`git init`|initialize a new repo in a directory|
|`git config --global user.name "name"`|initialize a global username for git in local system (needed)|
|`git config --global user.email "email"`|initialize a global email for git in local system (needed) (--local option also available)|
|`git status`|see the state of files in working tree, staging area vs latest commit in git history|
|`git add`|move file(s) to the staging area|
|`git add <filename>`|move a file to the staging area|
|`git diff --cached`|diff of staging area and latest commit|
|`git checkout -- filename`|retrieve a file from the staging area into the working tree|
|`git commit -a -m "commit message"`|commit all modified and tracked files in on command (bypass separate 'git add' command)|
|`git branch -d <branch-name>`|delete a branch, only if already merged|
|`git branch -D <branch-name>`|delete a branch, including if not already merged (exercise caution here)|
|`git merge --abort`|abort a merge during a merge conflict situation|
|`git checkout <commit-hash>`|checkout a commit directly, not through a branch, results in a detached HEAD state|
|`git clone <URL>`|Retrieve/Clone a repo|
|`git init`|initialize a new repo in a directory|
|`git init`|initialize a new repo in a directory|
|`git init`|initialize a new repo in a directory|

## Remote Repositories

Git remote is any location with a git repository- it could be a repo even on a co-worker's laptop, or another directory on our own system. Whenever we clone a repo, a single remote known by default as 'origin'(an alias for the link) is created. If we check the graph, we can see that there is a specialized branch known as origin/master, AND a HEAD called origin/HEAD. As such git doesn't track the changes made on the remote repo. 

`git fetch origin` makes git updates itself about the status of the remote repo (in this case the origin). Now `git status` will return 'your branch is behind origin/master by one commit'. To merge these changes to local repository then do `git merge origin/master`. `git pull origin/master` does all this in one step, but its better to do it seperately to avoid unexpected merges. 


Having multiple remotes are useful when we fork from a repository and still want to keep our fork updated with the master repository.

|Command|Description|
|----------|:-------------:|
|`git remote`|lists the available remotes|
|`git remote -v`|gives details of the remotes|
|`git remote add <remote-name> <remote-address>`|to add a remote|
|`git remote remove <remote-name>`|to remove a remote|
|`git branch -a`|to see all branches|
|`git branch -r`|to see only remote branches|


To keep track of the main repository from the fork as mentioned above:
- Let A be the master repository with link "https:github.com/username/A.git" and A-fork be the forked repository with link "https:github.com/username1/A-fork.git". 
- Now since I am username1, I will be working on my fork and hence the origin remote points to the fork. If I want to update the latest changes from the main repository A to my fork then add the remote (lets call it main) by `git remote add main "https:github.com/username/A.git"`. This creates another link (alias) to the main repository called as main. Now to fetch the changes from the master repository do `git fetch main master` and to merge these changes to the local repository `git merge main/master`.

## Pushing changes to remote

Whenever a local change is made, it does not reflect on the remote repository. To push local changes to the remote repository, `git push <remote> <branch-on-remote>`. 

## .gitignore
a file with a list of things to not add (for eg. log files we can use wildcards in this case) or see in the `git status` command. This will ensure we don't accidentally add these files and push to the remote repository. For example if .gitignore file contains `*.txt` then it ignores all txt files here, * acts as a wildcard ignoring a whole directory	<directory-name>, or if you want to ignore a specific folder like __pycache__ then add `__pycache__/` to your .gitignore.

## Different merging scenarios

- fast-forward merge
current branch is just moved to the commit of <branch-name>.
- 3-way-merge
a new 'merge commit happens and hence a commit message is required, it looks at the base commit the two branches started from, and the last commit of each branch.

## Merge conflicts

- on a particular line, if there is a change in one of the branches, and no change on the other branch, the **CHANGE WILL WIN** on the merge-commit
- if there are different changes on the same line, git tells you that automatic merge failes, fix conflicts. This time, using `git status tells` you 'You have unmerged paths' which means the merge is still on, and will complete when the conflicts are resolved.(at this stage we may abort using git merge --abort).
Now, go into the conflicting files, to see the changes git has made to indicate conflicts. For example: 

```<<<<<<<HEAD
..				(status in HEAD)
======
..				(status in otherbranchname)
>>>>>>><other-branchname>
```

Just delete everything except what you want to keep, then use `git add`, to add the file to commit just like any other commit. Checking `git status` says 'all conflicts fixed, but still merging' Using 'git commmit' will conclude the merge. 

------
## [AMAZING TUTORIALS](https://www.youtube.com/watch?v=uR6G2v_WsRA) - courtesy David Mahler 