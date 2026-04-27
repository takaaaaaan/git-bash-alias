# git-bash-alias

A collection of custom aliases that significantly improves the efficiency of Git Bash operations. Shortens repetitive commands and streamlines development workflows.

[日本語](jp/JP_README.md) | [한국어](ko/KO_README.md)

## Overview

This repository provides convenient alias configurations for using Git Bash in Windows environments. It includes configuration files that make it easy to execute common Git operations and shell commands.

## Quick Start

> **Tip:** Back up any existing dotfiles before copying (`cp ~/.bashrc ~/.bashrc.bak` etc.) — the steps below overwrite them.

### Windows (Git Bash)

Files for Windows live at the repo root.

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp .bashrc .bash_profile ~/        # ~/ resolves to C:\Users\<USERNAME>\
# Restart Git Bash
```

### Linux

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp linux/.bashrc linux/.bash_profile ~/
source ~/.bashrc
```

### macOS (zsh)

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp mac/.zshrc mac/.zprofile ~/
source ~/.zshrc
```

## Installation Notes

- The `cp` commands above overwrite any existing `~/.bashrc` / `~/.zshrc`. If you have your own customizations, merge them manually.
- Linux/macOS variants adjust platform-specific paths (`venv/bin/activate` instead of `venv/Scripts/activate`, `ip addr` / `ifconfig` instead of `ipconfig`, conda paths under `bin/` instead of `Scripts/`).
- Git tab completion for aliases requires `bash-completion` on Linux. On macOS zsh, it loads via `compinit`.

## Main Features

- Shortcuts for frequently used Git commands
- Streamlined directory operations
- Customizable alias configurations

## Customization

You can add or modify your own aliases by editing the `.bashrc` file. To add an alias:

```bash
alias new_command='command_to_execute'
```

## Recommended Additional Settings

You can make it even more convenient by adding settings like:

- Project-specific aliases
- Shortcuts to frequently used directories
- Custom function additions

## Troubleshooting

- If aliases are not reflected, restart Git Bash
- Verify that the paths are set correctly
- Check file permissions

## Contributing

Please submit improvement suggestions and bug reports through Issues or Pull Requests.
