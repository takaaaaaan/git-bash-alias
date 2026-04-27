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
alias gs='git switch'               # Switch branch
alias gcb='git checkout -b'           # Create new branch and checkout
alias gcd='git checkout develop'      # Checkout develop branch
alias gcmain='git checkout main'      # Checkout main branch
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
alias gst='git status'                # Git status
alias gl='git log --oneline --graph --all' # Simple log display
alias gll='git log --stat'            # Detailed log

alias gps='git push'                  # Push
alias gpf='git push --force-with-lease' # Force push (if remote branch is updated)
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

# Git alias completion (requires bash-completion + git completion to be loaded)
# On Debian/Ubuntu: install bash-completion and ensure /etc/bash_completion is sourced
if declare -F __git_complete >/dev/null 2>&1; then
    __git_complete g   _git
    __git_complete gc  _git_checkout
    __git_complete gcb _git_checkout
    __git_complete gb  _git_branch
    __git_complete gba _git_branch
    __git_complete gbd _git_branch
    __git_complete gbD _git_branch
    __git_complete gbrd _git_push
    __git_complete gs  _git_switch
    __git_complete gf  _git_fetch
    __git_complete gm  _git_merge
    __git_complete gp  _git_pull
    __git_complete gst _git_status
    __git_complete gps _git_push
    __git_complete gpf _git_push
    __git_complete gcm _git_commit
    __git_complete gca _git_commit
    __git_complete gr  _git_reset
    __git_complete gsta _git_stash
    __git_complete gstaap _git_stash
    __git_complete gstd _git_stash
    __git_complete grb  _git_rebase
    __git_complete grbi _git_rebase
fi

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

# claude alias
alias cl='claude'
alias cld='claude --dangerously-skip-permissions'
alias cu='ccusage daily'
alias cub='ccusage blocks --live'
alias cum='ccusage monthly'

# venv alias
alias "venvr"='source venv/bin/activate'
alias "venvd"='deactivate'
alias "venvc"='python -m venv venv'
alias "venvi"='pip install -r requirements.txt'

# network alias (Linux)
alias ip='ip addr'

# History settings
export HISTFILE=~/.bash_history    # History file path
export HISTSIZE=1000              # Number of history entries to save
export HISTFILESIZE=2000          # Maximum size of history file
export HISTCONTROL=ignoredups:erasedups  # Ignore and erase duplicate commands
export HISTIGNORE="set +o*:set -o*"  # Exclude set +o/set -o commands from history
shopt -s histappend               # Append history between sessions
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND" # Sync between sessions
export PATH="$HOME/.bun/bin:$PATH"

# proto (version manager) settings
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
elif [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    . "$HOME/miniconda3/etc/profile.d/conda.sh"
elif [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
    . "$HOME/anaconda3/etc/profile.d/conda.sh"
fi
unset __conda_setup
# <<< conda initialize <<<

# Conda prompt toggle settings
# Default: show (base) prompt (1 = visible, 0 = hidden)
export CONDA_PROMPT_VISIBLE=${CONDA_PROMPT_VISIBLE:-1}

# Store the original PS1 pattern that conda would use
# This will be set when conda initializes
if [ -z "$__CONDA_ORIGINAL_PS1" ] && [ -n "$CONDA_DEFAULT_ENV" ]; then
    # If conda is active, try to extract the base PS1
    # by temporarily removing (base) and storing it
    if [[ "$PS1" == *"(base)"* ]]; then
        __CONDA_ORIGINAL_PS1=$(echo "$PS1" | sed -E 's/\(base\)\s*//g')
        export __CONDA_ORIGINAL_PS1
    fi
fi

# Function to toggle conda (base) prompt visibility
toggle_conda_prompt() {
    if [ "$CONDA_PROMPT_VISIBLE" = "1" ]; then
        export CONDA_PROMPT_VISIBLE=0
        echo "Conda prompt (base) is now HIDDEN"
    else
        export CONDA_PROMPT_VISIBLE=1
        echo "Conda prompt (base) is now VISIBLE"
    fi
}

# Alias for easy toggling
alias tcp='toggle_conda_prompt'
alias vv='toggle_conda_prompt'

# Custom prompt function to control conda prompt display
__custom_conda_prompt() {
    if [ -n "$CONDA_DEFAULT_ENV" ]; then
        # Store original PS1 on first run if not already stored
        if [ -z "$__CONDA_ORIGINAL_PS1" ]; then
            # Extract base PS1 by removing (base) if present
            if [[ "$PS1" == *"(base)"* ]]; then
                __CONDA_ORIGINAL_PS1=$(echo "$PS1" | sed -E 's/\(base\)\s*//g')
                export __CONDA_ORIGINAL_PS1
            else
                # If (base) is not present, current PS1 is the base
                __CONDA_ORIGINAL_PS1="$PS1"
                export __CONDA_ORIGINAL_PS1
            fi
        fi

        if [ "$CONDA_PROMPT_VISIBLE" = "0" ]; then
            # Hide (base): use the stored base PS1
            if [ -n "$__CONDA_ORIGINAL_PS1" ]; then
                PS1="$__CONDA_ORIGINAL_PS1"
            else
                # Fallback: remove (base) from current PS1
                PS1=$(echo "$PS1" | sed -E 's/\(base\)\s*//g')
            fi
        else
            # Show (base): ensure (base) is present
            if [[ "$PS1" != *"(base)"* ]]; then
                # Use stored base PS1 and add (base)
                if [ -n "$__CONDA_ORIGINAL_PS1" ]; then
                    PS1="(base) $__CONDA_ORIGINAL_PS1"
                else
                    # Fallback: add (base) to current PS1
                    PS1="(base) $PS1"
                fi
            fi
        fi
    fi
}

# Hook into PROMPT_COMMAND to apply custom prompt
if [ -z "$__CONDA_PROMPT_HOOKED" ]; then
    export __CONDA_PROMPT_HOOKED=1
    # Wrap existing PROMPT_COMMAND
    if [ -n "$PROMPT_COMMAND" ]; then
        # Check if PROMPT_COMMAND already contains our function
        if [[ "$PROMPT_COMMAND" != *"__custom_conda_prompt"* ]]; then
            PROMPT_COMMAND="__custom_conda_prompt; $PROMPT_COMMAND"
        fi
    else
        PROMPT_COMMAND="__custom_conda_prompt"
    fi
fi
