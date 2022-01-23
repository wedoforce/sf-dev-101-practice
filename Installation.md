# Installation

1. [Windows](#windows)
1. [MacOS](#macos)
1. [Configuration](#configuration)

## Windows

### What is Git Bash?

From ["What is Git Bash?"](https://www.gitkraken.com/blog/what-is-git-bash):
> As a version control system, Git is delivered within Unix style command line methods, and these commands ultimately create the backbone of Git’s software. MacOS & Linux Operating Systems have a built-in terminal shell that supports Unix-based command line features whereas Microsoft Windows Operating System command line prompt is not a Unix-based terminal.
>
> As the Windows command line does not support Unix-based commands, Git CLI features are mostly delivered with user-friendly GUI applications in the Windows Operating System.
>
> These applications provide visual functionalities to the end-user which makes using Git easier. Even some of them, like GitKraken Client, provide drag-and-drop functionalities for common Git commands, so end-users don’t need to know every single command for managing their code base. This makes life easier for beginners at the very first stages of Git usage.
>
> As Git experience increases, end-users can prefer using Git command line features for specific commands. Git Bash is one tool that provides command line features in the Windows Operating System to end-users.

### Instruction

1. Download the latest Git Bash version [  here  ](https://gitforwindows.org)
1. Start the installation. It will ask you for the location and some other stuff. You only need to worry about location, everything else we will configure later
1. After the installation is complete, click the Git Bash icon

## MacOS

1. Intsall [Homebrew package manager](https://brew.sh)
1. In terminal execute `brew install git`

Congratulation! You've installed your first version control system!

## Configuration

### Line Endings

#### What is that?
Line ending is a hidden symbol that lets you OS know that you expect a new line start.

CR and LF are control characters or bytecode that can be used to mark a line break in a text file.

- CR = Carriage Return (\r, 0x0D in hexadecimal, 13 in decimal) — moves the cursor to the beginning of the line without advancing to the next line.
- LF = Line Feed (\n, 0x0A in hexadecimal, 10 in decimal) — moves the cursor down to the next line without returning to the beginning of the line.
A CR immediately followed by a LF (CRLF, \r\n, or 0x0D0A) moves the cursor down to the next line and then to the beginning of the line.

Windows and *nix systems historically have different line ending symbol. *nix systems (e.g. Linux, FreeBSD, MacOS) are fine with just LF, while Windows needs CRLF. The default Git Bash installation configures Git to transform Line Endings when you commit changes, which causes a lot of troubles when you work in a team. Don't worry if you don't know what commit is - soon you'll learn.

#### Why bother?
As I said, by default Git Bash overrides LF endings with CRLF. So when a Git repo originally has LS endings and you change something in it on Windows, Git Bash will try to overwrite line endings with CRLF. That introduces a ton of noise when you push you changes and create a PR (soon we'll learn what that is). We don't want our teammates to suffer, so we will configure Git to use line endings as is, plus use LF by default.

#### Configuration

1. Open your command line with Git installed (terminal, Git Bash, etc)
1. Type `git config --global core.eol lf` and hit enter. This sets your line endings to LF by default.
1. Run `git config --global core.autocrlf input` the same way. This prevents Git Bash from overwriting what is already on the repo.

