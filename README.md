# Git 101

- **Topics:**
  - [Topic 1](#topic1)
  - [Topic 2](#topic2)
  - [..](...)
- [Best Practices](#bestpractices)
- [Cheat Sheet](#cheatsheet)
- [Practice](#practice)
- [Extra Readings](#extrareadings)
- [Additional Resources](#additionalresources)

---

## Version Control System

### **Why VCS at all?**

Version control is important to keep track of changes — and keep every team member working on the right version. You should use version control software for all code, files, and assets that multiple team members will collaborate on.

In short, it allows you to track changes, roll them back, and see who did what with the codebase. This is an essential tool for working in a development *team*.

### **VCS in Salesforce**

As any software development, Salesforce projects need to control source code versions to make it easier to collaborate within the team and across an organization.

## Git

### **Why Git at all?**

Git is a ditribited version control system and is open source. In fact, Git version control is one of the most popular options. It's open source, so anyone can use it, and anyone can contribute to it.

Git is de-facto industry standard.

There are a lot of different ways to use Git. For this course we will use command line, as we aim to give you the foundation.

#### **VSC and Git Must Read**

1. [Pro Git](https://git-scm.com/book/en/v2)
    1. [About version control](https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control)
    1. [What is Git?](https://git-scm.com/book/en/v2/Getting-Started-What-is-Git?)
1. [Installing Git](/Installation.md)
1. [Pro Git](https://git-scm.com/book/en/v2)
    1. [First time Git setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
    1. [Getting help](https://git-scm.com/book/en/v2/Getting-Started-Getting-Help)
    1. [Getting a repo](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
    1. [Recording your change to a repo](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository)
1. [Branching](/branching.md)

# Best Practices

1. Make commits small and concise. E.g. you made a method that works and doesn't break the build - commit it!
1. A commit should not break the build. Ideally every commit should be deployable and pass all the auto-tests.
1. Commit messages should describe what was added, how the code base has changed. A commit message can be multiline.

Bad commit messages:

* `done`
* `bug fixed`
* `fixed tests 5`

Good commit messages:

* `account hierarchy table lwc`
* `removed AccountHandler.updateRelatedContacts`
* ```
    updates account with sales hierarchy group information

    <a longer description of what and why it does it>
    ```

## Cheat Sheet

1. Clone repo to local machine: `git clone <repo url> [<folder name>]`
1. Create a branch and switch to it: `git checkout -b <branch name>`
1. Stage changes for commit: `git add <path to file/folder>`
1. Stage all tracked changes: `git add -u`
1. Staged all changes including untracked: `git add .`
1. Create a commit: `git commit`
1. Create a commit with message (without opening and editor): `git commit -m '<your message>'`

---

## Practice

### Pre-requisite

- Knowledge: :heavy_check_mark: No special knowledge required
- Technical: :heavy_exclamation_mark: environment has to be setup
  - [Install git](/Installation.md)
  - [Github](https://github.com) account

### Overview

To pass the Git-101 challenge you need to get a Pull Request merged into this repo.

Creating branches, committing changes, and creating Pull Requests is extremely important for the course and for the real development. This is how you would deliver your code to the shared codebase. You'll do it numerouse times during the course and even more when you actually work.

Acceptance Criteria:

1. Create a new branch in [this repo](https://github.com/wedoforce/students) called `student/<first name>-<last name>`. E.g. `student/nikita-chursin`
1. Pull request (PR) is raised against the `main` branch
1. The PR contains the file [students/students1.list](https://github.com/wedoforce/students/students/students1.list) with a new line added. This line should consist of your first and last names and your email. E.g.: `Nikita Chursin,nikita@salesforcecraft.dev`
1. The PR must be merged to the `main` branch

---

# Extra Readings

- [Pro Git](https://git-scm.com/book/en/v2)

