# Tools and extensions for git

These are **tools and the extensions** that you can use to improve your workflow and magic skills.

### Git Command Line Tools

- [**hub**](https://github.com/github/hub): A command-line tool that makes git easier to use with GitHub.
- [**git-sizer**](https://github.com/github/git-sizer): Compute various size metrics for a Git repository, flagging those that might cause problems.
- [**git-quick-stats**](https://github.com/arzzen/git-quick-stats): A simple and efficient way to access various statistics in git repository.

### GitHub Chrome Extensions

- [**GitHub-Dark**](https://github.com/StylishThemes/GitHub-Dark) + [**Overlay-Scrollbars**](https://github.com/StylishThemes/Overlay-Scrollbars): Dark GitHub style.
- [**octolinker**](https://octolinker.github.io/): Allow navigation through code on GitHub more efficiently.
- [**github-repo-size**](https://github.com/harshjv/github-repo-size): Display repository size on GitHub.
- [**git-history-browser-extension**](https://github.com/LuisReinoso/git-history-browser-extension): Add a button to the github file interface to see its history.
- [**github-file-icon**](https://github.com/xxhomey19/github-file-icon): Gives different filetypes different icons in GitHub.

### VS Code Extensions

- [**GitLens**](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens): Supercharges the Git capabilities built into Visual Studio Code.
- [**Git Blame**](https://marketplace.visualstudio.com/items?itemName=waderyan.gitblame): See git blame information in the status bar.
- [**Git Graph**](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph): View a Git Graph of your repository, and easily perform Git actions from the graph.
- [**Code Spell Checker**](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker): A basic spell checker that works well with camelCase code. No more _"Fix Typo"_ commits.
- [**Markdown Preview Github Styling**](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-preview-github-styles): Changes VS Code's built-in markdown preview to match Github's style.
- [**Markdown TOC**](https://marketplace.visualstudio.com/items?itemName=AlanWalk.markdown-toc): Markdown TOC _(Table Of Contents)_ Plugin for Visual Studio Code.
- [**markdownlint**](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint): Markdown linting and style checking for Visual Studio Code.

# Useful commands

### Generate `.gitignore`

Too lazy to copy and paste or download your `.gitignore` file each time you create a new repository?

```bash
curl -s https://www.gitignore.io/api/{your_list} >> .gitignore
```

Replace **`{your_list}`** with a comma-separated-list _(one or more)_ of **Operating System** or **IDE** or **Programming Language**, here are some examples:

- `https://www.gitignore.io/api/windows`
- `https://www.gitignore.io/api/visualstudio`
- `https://www.gitignore.io/api/c++`
- `https://www.gitignore.io/api/linux,intellij,java`

### Export Repository's Archive

GitHub has `Download as .zip` option in all hosted repositories and to do the same from your terminal

```bash
git archive master --output=master.zip
```

### Clean Local Untracked Files

Before cleaning its always good to know which files are going to be cleaned

```bash
git clean -n
```

Then when you are comfortable use the `-f` or `-fd` option.

```bash
git clean -f     # Cleans files only without cleaning directories
git clean -fd    # Cleans files & directories
```

### Delete All Branches Except `master`

Having a lot of branches also leads to a very messy repo. 

```bash
git branch | grep -v 'master' | xargs git branch -D
```

You can replace `master` with any other branch name that you want to keep, but be careful **this will delete master**.  
Or even use a pattern of **more than one branch** to keep them and delete the rest.

```bash
git branch | grep -v 'master\|gh-pages' | xargs git branch -D
```

### Delete Remote-tracking Branches

Deleting local branches doesn't clean the repo 100%, since they were tracking remote branches (This will only work if you've already deleted the remote branch from your GitHub repo)_

```bash
git fetch --prune
```

### Delete an Entire Commit

Deleting a commit is **dangerous**, since the SHA of all following commits **will change**. Please be careful using this!

```bash
git rebase --onto <commit-SHA>^ <commit-SHA>
```

### Create Orphan Branch

Orphan branches aren't based on any other branches.The first commit made on this new orphan branch will have no parents and it will be the **root of a new history** totally disconnected from all the other branches and commits.  
This can be useful when lets say you are using GitHub Pages you want to completely it separate from your repository’s prior history.

```

                                                      |
              i---j---k     <== branch 'feature-1'    |
             /                                        |    a---b---c---d       <== branch 'master'
    a---b---c---d---h---l   <== branch 'master'       |
         \         /                                  |        1---2---3---4   <== branch 'gh-pages' (orphan)
          e---f---g         <== branch 'feature-2'    |
                                                      |
                   [Normal Branches]                  |                    [Orphan Branch]

```

To create a new empty orphan branch, use the following commands

```bash
git checkout --orphan <new-branch-name>
rm .git/index
git clean -fdx
```

### Remove large unwanted files from repository

Check out [link](https://rtyley.github.io/bfg-repo-cleaner/). For better explanation read [Usage](https://rtyley.github.io/bfg-repo-cleaner/#usage) from the official site.

An example usage:

- Download [Java Runtime Environment](https://www.java.com/en/download/manual.jsp) (Java 8 or above).
- Download [BFG][bfg] from official site.
- Determine the files you want to remove: Use specific names (`junk.txt`) or wildcards (`*.mp4`).
- Clone a fresh copy of **`{your_big_repo}`**, using the --mirror flag:<br/><br/>
    ```
    git clone --mirror https://github.com/{your_big_repo}.git
    ```
- Run BFG to clean your repository up:<br/><br/>
    ```
    java -jar bfg-1.13.0.jar --delete-files "{Passwords.txt,*.mp4}" {your_big_repo}.git
    ```
- Strip out the unwanted dirty data then push:<br/><br/>
    ```
    cd {your_big_repo}.git
    git reflog expire --expire=now --all && git gc --prune=now --aggressive
    git push
    ```
### List Ignored Files

To check if .gitignore is ignoring the files you actually want then

```bash
git ls-files --others --ignored --exclude-standard
```

### Find File sizes

To keep track of your repository size.

```bash
git rev-list --objects --all \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| sed -n 's/^blob //p' \
| sort --numeric-sort --key=2 \
| cut -c 1-12,41- \
| $(command -v gnumfmt || echo numfmt) --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest
```

### Git show

git-show is a command line utility that is used to view expanded details on Git objects such as blobs, trees, tags, and commits. Tags show the tag message and other objects included in the tag. Trees show the names and content of objects in a tree. Blobs show the direct content of the blob. Commits show a commit log message and a diff output of the changes in the commit.

### Gitk

Gitk is a graphical repository browser. It can be thought of as a GUI wrapper for git log. It is useful for exploring and visualizing the history of a repository. Git Gui is another GUI to Git. While Gitk focuses on navigating and visualizing the history of a repository, Git Gui focuses on refining individual commits, single file annotation and does not show project history.

### Git cherry pick

git cherry-pick is a powerful command that enables arbitrary Git commits to be picked by reference and appended to the current working HEAD. Cherry picking is the act of picking a commit from a branch and applying it to another. git cherry-pick can be useful for undoing changes. For example, say a commit is accidently made to the wrong branch. You can switch to the correct branch and cherry-pick the commit to where it should belong. Example:

If this was the initial state

```markdown
    a - b - c - d   Master
         \
           e - f - g Feature
```

on doing

```bash
git checkout master
git cherry-pick f
```

new state (The f commit has been successfully picked into the feature branch)

```markdown
    a - b - c - d - f   Master
         \
           e - f - g Feature
```