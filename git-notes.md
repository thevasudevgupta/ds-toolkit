
# Git Notes - not too great but can be really helpful boiis!
`git log` shows the commit history

`git log -p` to show the particular changes that have happened

to show a neat and detailed graph:`git log --all --decorate --oneline --graph`


`git diff` shows difference between current working tree and the staging area

`git diff --staged` we will get the differences between the staging area and last commit

if we are comparing it with another branch `git diff <other-branch-name>`

`git rm <filename>` it removes the file from the directory as well as from the staging area


**UNDOING A WORKING TREE CHANGE**

we can replace changes we've made to a file in the working tree to the version it was in the staging area `git checkout -- <filename>`

**UNDO STAGING OF FILES** to replace it back with the last commit `git reset HEAD <filename>`

**RESTORE A FILE FROM A PREVIOUS COMMIT**
if we had a file in an earlier commit but we want it back, then we use: `git checkout <commit-hash> -- <filename>`

to see what are the commits that happened to a particular file, use	`git log -- <filename>`

this command (checkout) also stages this addition of the new file <filename>

**.gitignore**
a file with a list of things to not add(for eg. log files we can use wildcards in this case

`*.txt - ignores all txt files Here, * acts as a wildcard ignoring a whole directory	<directory-name>`

**GIT BRANCHING AND MERGING**

`git branch <branch-name>` creates a new branch at the location of HEAD

`git branch`	just displays the list of branches

`git checkout <branch-name>` moves the head to the <branch-name>

`git branch --merged` shows the branches which have been merged. always check the merged branches before deleting

**deleting branches**

`git branch -d <branch-name>` we delete branches when we have finished a merge and no longer need that branch

**some shortcuts**

`git checkout -b <new-branch name>` // creates a new branch and goes to it
`git commit -a` // adds and commits

`git merge <branch-name>`	gets the changes of <branch-name> into current branch.

in case of:
 - fast-forward merge
  - current branch is just moved to the commit of <branch-name>
 - 3-way-merge
  - a new 'merge commit happens'
  - it looks at the base commit the two branches started from, and the last commit of each branch.
  - when it is a 3-way merge, it is a commit, and therefore we are required to give a commit message

**MERGE CONFLICTS**

- on a particular line, if there is a change in one of the branches, and no change on the other branch, the CHANGE WILL WIN on the merge-commit
- if there are different changes on the same line, git tells you that automatic merge failes, fix conflicts. This time, using git status tells you 'You have unmerged paths' which means the merge is still on, and will complete when the conflicts are resolved.(at this stage we may abort using git merge --abort).
Now, go into the conflicting files, to see the changes git has made to indicate conflicts

<<<<<<<HEAD
..				(status in HEAD)
======
..				(status in otherbranchname)
>>>>>>><other-branchname>

Just delete everything except what you want to keep, then use git add, to add the file to commit just like any other commit.
checking git status says 'all conflicts fixed, but still merging' Using 'git commmit' will conclude the merge-----

**THE DETACHED HEAD STATE**

	 - to just see how are files looked at some commit we can use `git checkout <SHA-1 HASH>`
	this calls a detached head
	 - now, we can either create another branch here, or
	 - just checkout to another branch

git stash SITUATION: we have made some changes in our working tree, but we have not staged or commited them. Now, trying to checkout to another branch, git will stop us from doing this. This is because your current changes will be lost. Now, using 'git stash', git will save our changes which we can get to later

git stash save "message" :gives us information about what the stash is about


git stash list gives the list of stashes 	with -p , will show what were the changes
git stash apply will apply these stashes to the working directory. we need to add and commit it(if we want to right now)
But, these stashes remain (see git stash list) these are there so that we can reuse them later

if we want to apply a specific stash, use `git stash apply <labelname>`

`git stash pop` this will apply the stashes and delete the stash






**USING REMOTE REPOS**

a git remote any location with a git repository- it could be a repo even on a co-worker's laptop, or another directory on our own system

when we clone a repo, a single remote known by default as 'origin'(an alias for the link) is created

`git remote lists` the available remotes

`git remote -v` gives details of the remotes

CHECKING graph now, we see that there is a specialized branch known as origin/master, AND a HEAD called origin/HEAD

We could checkout into the remote tracking branch. But that would mean a detached head git fetch& git merge

if commits have been made at the remote repository, git does not know of the changes made at the remote repo.

To correct this, we use

`git fetch origin`
this asks git to update itself about the status of the remote repo
if we now, enter

`git status`
then we will see that it says - ' your branch is behind origin/master by one commit'
to fast-forward it, we will merge the 'origin/master' branch with the local master branch,
using git merge.

`git pull`
this is a combination of git fetch, and git merge. HOWEVER, it is better to do git fetch and git merge seperately to be more specific and avoid unexpected merge results

`git push <remote> <branch-on-remote>` if a local change is made, that should be updated on the local repository.
 - when a local commit is made, the local master is one step ahead of the remote origin
 - git push origin master

**ADDING A GIT REMOTE**

`git remote add <remote-name> <remote-address>` this will add a remote to another repository(could be another person's repo as well)
REMOVING A  REMOTE

`git remote remove <remote-name>`

WHAT if there are changes on someone else's repo that we want to update use `git fetch <remote-name>` then `git merge` to bring us up to speed.

to see all branches, use `git branch -a` To see only remote branches, use `git branch -r`

**SEE MORE - amending commits, rebasing, and cherry-picking**

AMAZING TUTORIALS - courtesy David Mahler
https://www.youtube.com/watch?v=uR6G2v_WsRA

**VIDEO 1**

`git init` - initialize a new repo in a directory

`git config` --global user.name "name"

`git config` --global user.email "email" (--local option as well)

`git status` - see the state of files in working tree, staging area vs latest commit in git history

`git add` - move file(s) to the staging area

`git log` - view the git history / git commit graph

`git diff` - diff of working tree and staging area

`git diff` --cached - diff of staging area and latest commit

`git rm` - remove a file from the working tree and the staging area

`git checkout -- filename` - retrieve a file from the staging area into the working tree

`git reset HEAD filename` - retrieve a file from the latest commit into the staging area

`git checkout (commit hash) filename` - retrieve a file from a previous commit

**VIDEO 2**

`git log` =  git history

`git log --all --decorate --oneline --graph` = commit history graph

`git branch (branch-name)` = create a branch

`git checkout (branch-name)` = checkout a branch/move head pointer

`git commit -a -m "commit message"` = commit all modified and tracked files in on command (bypass separate 'git add' command)

`git diff master..SDN` = diff between 2 branches

`git merge (branch-name)` = merge branches (fast-forward and 3-way merges)

`git branch --merged` = see branches merged into the current branch

`git branch -d (branch-name)` = delete a branch, only if already merged

`git branch -D (branch-name)` = delete a branch, including if not already merged (exercise caution here)

`git merge --abort` = abort a merge during a merge conflict situation

`git checkout (commit-hash)` = checkout a commit directly, not through a branch, results in a detached HEAD state

`git stash` = create a stash point

`git stash list` = list stash points

`git stash list -p` = list stash points and show diffs per stash

`git stash apply` = apply most recent stash

`git stash pop` = apply most recent stash, and remove it from saved stashes

`git stash apply (stash reference)` = apply a specific stash point

`git stash save "(description)"` = create a stash point, be more descriptive


**VIDEO 3**

Commands used:

Retrieve/Clone a repo = `git clone (URL)`

List remotes = `git remote (-v for detail)`

Commit graph = `git log --all --decorate --oneline --graph`

Checkout a branch = `git checkout`

Create and checkout a branch = `git checkout -b (branch name)`

Retrieve/download from a remote = `git fetch (remote name)`

merge branch or tracking-branch = `git merge (branch or tracking branch name)`

Show status = `git status`

Upload to a remote = `git push (remote name) (branch name)`

stage an edit = `git add (filename)`

make a commit = `git commit -m "description"`

stage and commit = `git commit -a -m "description"`

List local branches = `git branch`

List remote branches = `git branch -r`

List both local and remote branches = `git branch -a`
