# GIT - What is it and understanding some common terminologies.

First of all, **GitHub is not git**. GitHub is a website for hosting projects that use git. 

Git is a type of version control system (VCS) that makes easier to track changes to your files. For example, when you edit a git file, it can help you track who made what changes and why. It also helps you revert back to any point in the history of the code in case you run into some issues later on.

It becomes extremely useful when you are working on a project in a group, as it helps tracking progress over time by saving checkpoints and track what everyone is working on.

Now lets understand some basic terminology of Git and understand how it works exactly.

## Terminology

Here’s the git terminology:

- **Repository** - The git project folder is called a git repository.

- **Branch** - A branch in the repo is like another world. A person working in one branch of the repo can switch to another and hence work there without affecting anything on the other branch. Once satisfied the user can merge these branches together.

![structure](assets/structure.png)

Hence as seen in the above image there are three branches -  the master branch, branch1 and branch2 all independent of one another.

- **master** - the repository’s main branch. Generally, the final working code is in this branch and various other branches are used for working on something which are finally merged to the master.

- **clone** - copies an existing git repository, normally from some remote location(online) to your local environment(personal system).
  
- **add** - staging changed files on the local repository for commiting.

- **commit** - submitting the files onto the local repository is called a commit. Hence a user needs to first add a file before commiting it.

- **fetch or pull** - fetch command is used to get the latest changes from the remote to the local repository. This doesn't reflect the changes on the local repository untill we **merge** these changes. The difference between fetch and pull is that the **pull command** does the work of both fetch and merge in one go. Hence its always recommended to first fetch the changes review them before merging on the local repository.


- **push** - is used to send the changes on the local repository onto the remote environment. 

- **remote** - these are “remote” locations of your repository, normally on some central server like in this case the GitHub website.

- **head** - is a reference to the node to which our working space of the local repository is at. Hence whenever we switch branches the head moves to the next branch. Similarly after every commit, the head points to the next commit. Therefore the head points to the current location of the code we are in the whole working tree.
