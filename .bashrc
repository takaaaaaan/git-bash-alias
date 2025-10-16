# base alias
alias aa='alias'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history'
alias l='clear && ll'
alias ll='ls -l'
alias ls='ls -F --color=auto --show-control-chars'
alias c='clear'

# directory alias
alias d='cd ~/Desktop'

# git alias
alias g='git'
alias gc='git checkout'               # Switch branch
alias gcb='git checkout -b'           # Create new branch and checkout
alias gcd='git checkout develop'      # Checkout develop branch
alias gb='git branch'                 # List local branches
alias gba='git branch -a'             # List remote and local branches
alias gbd='git branch -d'             # Delete branch
alias gbD='git branch -D'             # Force delete branch
alias gbrd='git push origin --delete' # Delete remote branch
alias gf='git fetch --prune'          # Fetch latest remote repository info
alias clean-branch='git fetch --prune && git branch -vv | grep ": gone]" | awk '\''{print $1}'\'' | xargs git branch -D' # Delete local branches that don't exist on remote
alias gm='git merge'                  # Merge
alias gmrset='git merge --abort'      # Abort merge
alias gp='git pull'                   # Pull
alias gs='git status && git log --oneline --graph --all'  # Check status and log at once
alias gst='git status'                # Git status
alias gl='git log --oneline --graph --all' # Simple log display
alias gll='git log --stat'            # Detailed log

alias gps='git push'                  # Push
alias gpf='git push --force'          # Force push
alias ga='git add .'                  # Stage all changes
alias gaa='git add -A'                # Stage all changes (including deleted files)
alias gcm='git commit -m'             # Commit
alias gca='git commit --amend'        # Amend last commit

alias gr='git reset'                  # Reset
alias grh='git reset --hard ORIG_HEAD' # Hard reset
alias grs='git reset --soft ORIG_HEAD' # Undo commit
alias grso='git reset --soft HEAD~1'   # Undo last commit

# Stash operations
alias gsta='git stash'                # Save stash
alias gstaap='git stash apply'        # Apply stash
alias gstd='git stash drop'           # Delete stash

# Basic rebase operations
alias grb='git rebase'                # Normal rebase
alias grbi='git rebase -i'            # Interactive rebase
alias grbc='git rebase --continue'    # Continue rebase
alias grba='git rebase --abort'       # Abort rebase
alias grbs='git rebase --skip'        # Skip conflict

# Rebase to specific branch
alias grbm='git rebase master'        # Rebase to master
alias grbd='git rebase develop'       # Rebase to develop

# Backup before rebase
alias grbb='git branch backup-before-rebase'  # Backup before rebase

# npm alias
alias ni='npm install'          # Install package
alias nis='npm install --save'  # Install and save dependency
alias nid='npm install --save-dev'  # Install dev dependency
alias nr='npm run'              # Run npm script
alias nn='npm run dev'          # Run dev script
alias nb='npm run build'        # Run build script
alias nt='npm test'             # Run test
alias nun='npm uninstall'       # Uninstall package
alias ns='npm start'            # Run start script

# next.js alias
alias n='npm run dev'
alias rn='rm -r .next/'
alias rnn='rm -r node_modules/'
alias nv='source venv/Scripts/activate'

alias ip='ipconfig'

# History settings
export HISTFILE=~/.bash_history    # History file path
export HISTSIZE=1000              # Number of history entries to save
export HISTFILESIZE=2000          # Maximum size of history file
export HISTCONTROL=ignoredups     # Ignore duplicate commands
shopt -s histappend               # Append history between sessions
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND" # Sync between sessions

# Don't record duplicate commands
export HISTCONTROL=ignoredups:erasedups

# Save history when each session ends
shopt -s histappend
export PATH="$HOME/.bun/bin:$PATH"