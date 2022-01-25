# Branching

To raise a pull request you need to create a branch first.

## What is a branch?

Think of it as a a river. You have one main flow and a lot of tiny springs that go in and out of the main river. The main river is the branch called `main`. The springs are the rest of the branches.

So you can create a branch, you can change it however you want (add some fish!), and then you can merge in back into the main river. Now the main river contains your changes.

You can read through the following docs to get deeper understanding of branches:

1. [Git SCM: Branches in a nutshell](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell)
1. [Atlassian: Git Branch](https://www.atlassian.com/git/tutorials/using-branches)

## How to create one

There are 2 ways to create a branch:

1. `git branch <branch name>`. This will create branch, but you will stay at the branch you were already. E.g. if you are on `main` and do `git branch spring`, you create a branch `spring`, but any further changes will apply to `main`.
1. `git checkout -b <branch name>`. This will create branch, and you will switch to that newly created branch. E.g. if you are on `main` and do `git checkout -b spring`, you create a branch `spring`, and any further changes will apply to `spring`.

To learn more on Git branching use this site: [Learn Git Branching](https://learngitbranching.js.org)

