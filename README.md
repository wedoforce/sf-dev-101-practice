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
1. [Installing Git](#installation)
1. [Pro Git](https://git-scm.com/book/en/v2)
    1. [First time Git setup](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
    1. [Getting help](https://git-scm.com/book/en/v2/Getting-Started-Getting-Help)
    1. [Getting a repo](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository)
    1. [Recording your change to a repo](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository)

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
    updates account with sales hierarchu group information

    <a longer description of what and why it does it>
    ```

## Cheat Sheet

:notebook: `I want to have a cheat sheet/data sheet at the end to get back to it anytime`

1. ...

---

## Practice

### Pre-requisite

:notebook: `I need to understand pre-requisites if it makes sense to jump into practice`

- Knowledge
  ...
- Technical
  - Open terminal (Ctrl/Cmd + Shift + P -> Terminal:Create New Termnial)
  - Run [prerequisite.sh](./scripts/prerequisite.sh) script in the terminal to be technically ready
  ```bash
  ./scripts/prerequisite.sh
  ```

### Overview

1. :notebook: `Where are practice tasks`
1. :notebook: `How to know if I've done the task`
1. :notebook: `How to troubleshoot`

---

# Extra Readings

:notebook: `Sometimes, I did understand everything, but I want to learn more about it - I need extra materials`

- [Extra Reading 1](extrareading1)
- [...](...)

# Additional Resources

:notebook: `To broaden my knowledge`

- [Additional Resource 1](addittionalresource1)
- [...](...)
