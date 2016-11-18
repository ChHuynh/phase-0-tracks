# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is pretty much how developers make save points while they are working. it lets multiple people work on the same project, or to be able to test out new code without having to start from scratch.
* What is a branch and why would you use one?

a branch is kind of like creating a split path for code, files etc. when you make a branch all the changes, additions and so on only happen in the branch, while the master remains the same. this allows for different chunks of code to be written without affecting the master, and is good for testing code before merging with the master, or allowing multiple people to work on the same project.
* What is a commit? What makes a good commit message?

a commit is the process of creating a new save point with all the changes that have been made to the file. a good commit message concisely tells the user what has changed in the current version from the previous one.

* What is a merge conflict?

a merge conflict is when a branch you are trying to merge with another one. both has a file that was changed, ex: both branches have a txt file named animal, branch A has cat in the file and branch B has dog in the file. when this happens git dosent know which file to use in the merge, as they're both equally valid changes. the user has to manually choose which file to use.