# Git 101: Merge confilcts

Ah, so you face a merge conflict!

- **Topics:**
  - [What is a merge confilct?](#what-is-a-merge-confilct)
  - [Git](#git)
- [Best Practices](#best-practices)
- [Cheat Sheet](#cheat-sheet)
- [Practice](#practice)
- [Extra Readings](#extra-readings)

---

## What is a merge confilct?

### The Quickest Draw in the Wild West

Merge conflict is an indication, that you and your teammate have made conflicting changes to the same file, but your teammate has already merged their changes.

### Help me, Obi-Wan Kenobi, you're my only hope

You need to resolve the conflicts manually now, cause only you, as a human, can do this. If it's a real code merge confilctyou may also need to talk to the teammate, who introduced the conflicting changes.

#### **VSC and Git Must Read**

1. [Atlassian: Merge conflicts](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts)

# Best Practices

1. Pull and merge shared branch changes often to have less merge conflicts
1. Make commits small and merge them often to have less merge conflicts

## Cheat Sheet

1. Pull the latest changes: `git pull`
1. Merge remote tracking branch: `git merge origin/<branch name>`, e.g. `git merge origin/main`
1. Stage all tracked changes: `git add -u`
1. Finalize merge: `git merge --continue`

---

## Practice

### Pre-requisite

- Knowledge: :heavy_check_mark: No special knowledge required
- Technical: :heavy_exclamation_mark: environment has to be setup
  - Have a pull request with confilcts

### Overview

Pull the latest changes from the shared branch and merge them to yours. Resolve all the conflicts and push the changes.

---

# Extra Readings

- [Pro Git](https://git-scm.com/book/en/v2)

