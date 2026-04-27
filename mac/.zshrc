# base alias
alias aa='alias'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='history'
alias l='clear && ll'
alias ll='ls -l'
alias ls='ls -F -G'                    # BSD ls (macOS): -G enables color
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

# Git alias completion (zsh)
# Requires zsh git completion to be loaded (autoload -Uz compinit && compinit)
autoload -Uz compinit
compinit -u 2>/dev/null
if (( $+functions[compdef] )); then
    compdef g=git
    compdef gc='git checkout'
    compdef gcb='git checkout'
    compdef gb='git branch'
    compdef gba='git branch'
    compdef gbd='git branch'
    compdef gbD='git branch'
    compdef gbrd='git push'
    compdef gs='git switch'
    compdef gf='git fetch'
    compdef gm='git merge'
    compdef gp='git pull'
    compdef gst='git status'
    compdef gps='git push'
    compdef gpf='git push'
    compdef gcm='git commit'
    compdef gca='git commit'
    compdef gr='git reset'
    compdef gsta='git stash'
    compdef gstaap='git stash'
    compdef gstd='git stash'
    compdef grb='git rebase'
    compdef grbi='git rebase'
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
alias venvr='source venv/bin/activate'
alias venvd='deactivate'
alias venvc='python -m venv venv'
alias venvi='pip install -r requirements.txt'

# network alias (macOS)
alias ip='ifconfig'

# History settings (zsh)
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=2000
setopt APPEND_HISTORY              # Append to history file (don't overwrite)
setopt INC_APPEND_HISTORY          # Append commands as they are entered
setopt SHARE_HISTORY               # Share history between sessions
setopt HIST_IGNORE_DUPS            # Don't record duplicates
setopt HIST_EXPIRE_DUPS_FIRST      # Expire duplicates first when trimming
setopt HIST_IGNORE_SPACE           # Don't record commands that start with a space
export HISTORY_IGNORE="(set +o*|set -o*)"

export PATH="$HOME/.bun/bin:$PATH"

# proto (version manager) settings
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
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

# Aliases for easy toggling
alias tcp='toggle_conda_prompt'
alias vv='toggle_conda_prompt'

# Custom prompt function to control conda prompt display
__custom_conda_prompt() {
    if [ -n "$CONDA_DEFAULT_ENV" ]; then
        # Store original PS1 on first run if not already stored
        if [ -z "$__CONDA_ORIGINAL_PS1" ]; then
            if [[ "$PS1" == *"(base)"* ]]; then
                __CONDA_ORIGINAL_PS1="${PS1//\(base\) /}"
                export __CONDA_ORIGINAL_PS1
            else
                __CONDA_ORIGINAL_PS1="$PS1"
                export __CONDA_ORIGINAL_PS1
            fi
        fi

        if [ "$CONDA_PROMPT_VISIBLE" = "0" ]; then
            PS1="$__CONDA_ORIGINAL_PS1"
        else
            if [[ "$PS1" != *"(base)"* ]]; then
                PS1="(base) $__CONDA_ORIGINAL_PS1"
            fi
        fi
    fi
}

# Hook into precmd to apply custom prompt (zsh equivalent of bash PROMPT_COMMAND)
autoload -Uz add-zsh-hook
add-zsh-hook precmd __custom_conda_prompt
