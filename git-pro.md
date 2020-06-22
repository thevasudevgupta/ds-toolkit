# Using pro GIT tools and commands

## Tools and extensions for git

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

## Special commands

### What is git rebase?

Rebasing is the process of moving or combining a sequence of commits to a new base commit. Rebasing is most useful and easily visualized in the context of a feature branching workflow. From a content perspective, rebasing is changing the base of your branch from one commit to another making it appear as if you'd created your branch from a different commit. Internally, Git accomplishes this by creating new commits and applying them to the specified base. For better visual understanding:

![gitrebase](assets/rebase.svg)

### Some other commands

- `git clean -n` - clean local untracked files
- `git clean -f` - clean files only without cleaning directories
- `git clean -fd` - clean files along with directories
- `git branch | grep -v 'master' | xargs git branch -D` - delete all branches except master
- `git branch | grep -v 'master\|gh-pages' | xargs git branch -D` - delete all branches except master and gh-pages (can be extended to any number of branches)
- `git fetch --prune` - delete remote-tracking branches
- `git rebase <base>` - this automatically rebases the current branch onto <base>
- `git rebase --interactive <base>` - running git rebase with the -i flag begins an interactive rebasing session. Instead of blindly moving all of the commits to the new base, interactive rebasing gives you the opportunity to alter individual commits in the process.
- `curl -s https://www.gitignore.io/api/{your_list} >> .gitignore` - to easily download .gitignore files instead of copying them each time. Replace `{your-list}` with appropriate Operating System or IDE or Programming Language names for example : `https://www.gitignore.io/api/windows or https://www.gitignore.io/api/visualstudio or https://www.gitignore.io/api/c++ or https://www.gitignore.io/api/linux,intellij,java`. Mulitple names can also be given by seperating with a comma. 
- `git checkout --orphan <new-branch-name>` - To create a new orphan branch. Orphan branches aren't based on any other branches.The first commit made on this new orphan branch will have no parents and it will be the root of a new history totally disconnected from all the other branches and commits.