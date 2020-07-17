## What is git rebase?

Rebasing is the process of moving or combining a sequence of commits to a new base commit. Rebasing is most useful and easily visualized in the context of a feature branching workflow. From a content perspective, rebasing is changing the base of your branch from one commit to another making it appear as if you'd created your branch from a different commit. Internally, Git accomplishes this by creating new commits and applying them to the specified base. For better visual understanding:

![gitrebase](assets/rebase.svg)

## Merging vs Rebase

The first thing to understand about git rebase is that it solves the same problem as git merge. Both of these commands are designed to integrate changes from one branch into another branch—they just do it in very different ways. 

Consider what happens when you start working on a new feature in a dedicated branch, then another team member updates the master branch with new commits. Now, let’s say that the new commits in master are relevant to the feature that you’re working on. To incorporate the new commits into your feature branch, you have two options: merging or rebasing.

![1](assets/rebasevsmerge1.svg)

### The merge option

The easiest option is to merge the master branch into the feature branch. This creates a new “merge commit” in the feature branch that ties together the histories of both branches, giving you a branch structure that looks like this: 

![2](assets/rebasevsmerge2.svg)

Merging is nice because it’s a non-destructive operation. The existing branches are not changed in any way. On the other hand, this also means that the feature branch will have an extraneous merge commit every time you need to incorporate upstream changes. If master is very active, this can pollute your feature branch’s history quite a bit. While it’s possible to mitigate this issue with advanced git log options, it can make it hard for other developers to understand the history of the project.

### The Rebase Option

As an alternative to merging, you can rebase the feature branch onto master branch. This moves the entire feature branch to begin on the tip of the master branch, effectively incorporating all of the new commits in master. But, instead of using a merge commit, rebasing re-writes the project history by creating brand new commits for each commit in the original branch. 

![3](assets/rebasevsmerge3.svg)

The major benefit of rebasing is that you get a much cleaner project history. First, it eliminates the unnecessary merge commits required by git merge. Second, as you can see in the above diagram, rebasing also results in a perfectly linear project history. But, there are two trade-offs for this pristine commit history: safety and traceability. If you don’t follow the Golden Rule of Rebasing, re-writing project history can be potentially catastrophic for your collaboration workflow. And, less importantly, rebasing loses the context provided by a merge commit—you can’t see when upstream changes were incorporated into the feature.

## Golden Rule of rebasing

The golden rule of git rebase is to never use it on public branches. For example, think about what would happen if you rebased master onto your feature branch:

![4](assets/rebasevsmerge4.svg)

The rebase moves all of the commits in master onto the tip of feature. The problem is that this only happened in your repository. All of the other developers are still working with the original master. Since rebasing results in brand new commits, Git will think that your master branch’s history has diverged from everybody else’s. The only way to synchronize the two master branches is to merge them back together, resulting in an extra merge commit and two sets of commits that contain the same changes (the original ones, and the ones from your rebased branch). This is a very confusing situation. So, before you run git rebase, always ask yourself, “Is anyone else looking at this branch?” If the answer is yes, then stop and start thinking about a non-destructive way to make your changes 