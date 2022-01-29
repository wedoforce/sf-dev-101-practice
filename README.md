# Engineering Enviornment Setup

- **Topics:**
  - [Visual Studio Code](#vscode)
- [Practice](#practice)

---

## VSCode

### **Why Visual Studio Code(VSCode)?**

VSCode is one of so-called integrated development environment (IDE).  
IDEs are there to help you concentrate on engineering activities - create new things.  
They will assist you with autocompletion, code re-factoring (e.g. change variable name to a better one acrros the whole code base) and many other things.  
IDEs allows you to be much more productive and bring more value.
Over time, you could find alternatives (like Intellij IDEA, VIM, etc.), but during SF Dev journey, please use VS Code.  
[VS Code](https://code.visualstudio.com/docs) is actively being developed, it has a huge community and support for many types of modern languages.  
It is quite popular among Salesforce Developers as well.

#### **Must Read and Execute**

1. Install VS Code
   1. [Install Java 11](https://adoptium.net/?variant=openjdk11&jvmVariant=hotspot)
   1. [Install VS Code](https://code.visualstudio.com/download)
1. [Install Node JS](https://nodejs.org/en/)
1. Install Git Bash :heavy*check_mark: this should have been done by now based on \_lessons/git-101*
1. Configure VS Code to use git bash as the [default terminal](https://dev.to/andrewriveradev/how-to-set-git-bash-as-integrated-terminal-in-vscode-2k31)
1. Install SFDX-CLI :heavy_check_mark: this should have been done by now.  
   You could check by running `sfdx version` in Git Bash terminal.  
   If it is not installed, the easiest is to install it as a Node JS Package:

```bash
npm i -g sfdx-cli
```

1. [Connect your DEV Hub Org](https://trailhead.salesforce.com/en/content/learn/projects/quick-start-salesforce-dx/set-up-your-salesforce-dx-environment):heavy_check_mark: this should have been done by now, if not - just follow the instructions under the link.

---

## Practice

### Pre-requisite

- Knowledge: :heavy_check_mark: No special knowledge required
- Technical: :heavy_exclamation_mark: run environment setup check script
  - Open terminal (Ctrl/Cmd + Shift + P -> Terminal:Create New Termnial)
  - Run [prerequisite.sh](./scripts/prerequisite.sh) script in the terminal to be technically ready
  ```bash
  ./scripts/prerequisite.sh
  ```
