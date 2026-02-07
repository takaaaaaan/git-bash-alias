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
alias gc='git checkout'               # ブランチ切り替え
alias gcb='git checkout -b'           # 新しいブランチを作成してチェックアウト
alias gcd='git checkout develop'       # develop にチェックアウト
alias gb='git branch'                 # ローカルブランチ一覧
alias gba='git branch -a'             # リモートブランチ，ローカルブレンチ一覧表示
alias gbd='git branch -d'             # ブランチ削除
alias gbD='git branch -D'             # 強制ブランチ削除
alias gbrd='git push origin --delete' # リモートブランチ削除
alias gf='git fetch --prune'          # リモートリポジトリの最新情報取得
alias clean-branch='git fetch --prune && git branch -vv | grep ": gone]" | awk '\''{print $1}'\'' | xargs git branch -D' # リモートリポジトリに存在しないローカルブランチを削除
alias gm='git merge'                  # マージ
alias gmrset='git merge --abort'      # マージ中止
alias gp='git pull'                   # プル
alias gs='git status && git log --oneline --graph --all'  # 状態とログを一度に確認
alias gst='git status'                # git ステータス
alias gl='git log --oneline --graph --all' # 簡易ログ表示
alias gll='git log --stat'            # 詳細ログ

alias gps='git push'                  # プッシュ
alias gpf='git push --force-with-lease' # 強制プッシュ (リモートブランチが更新されている場合)
alias ga='git add .'                  # すべての変更をステージング
alias gaa='git add -A'                # すべての変更 (削除されたファイルも含む) をステージング
alias gcm='git commit -m'             # コミット
alias gca='git commit --amend'        # 最後のコミット修正

alias gr='git reset'                  # リセット
alias grh='git reset --hard ORIG_HEAD' # ハードリセット
alias grs='git reset --soft ORIG_HEAD' # コミットを取り消し
alias grso='git reset --soft HEAD~1'   # 直前のコミットを取り消し

# スタッシュ操作
alias gsta='git stash'                # スタッシュ保存
alias gstaap='git stash apply'        # スタッシュ適用
alias gstd='git stash drop'           # スタッシュ削除

# 基本リベース操作
alias grb='git rebase'                # 通常のリベース
alias grbi='git rebase -i'            # インタラクティブリベース
alias grbc='git rebase --continue'    # リベース継続
alias grba='git rebase --abort'       # リベース中止
alias grbs='git rebase --skip'        # コンフリクトスキップ

# 特定のブランチにリベース
alias grbm='git rebase master'        # master にリベース
alias grbd='git rebase develop'       # develop にリベース

# リベース前のバックアップ
alias grbb='git branch backup-before-rebase'  # リベース前にバックアップ

# Gitエイリアスの補完（Git for Windowsなどからgit completionがロードされている必要がある）
__git_complete g   _git
__git_complete gc  _git_checkout
__git_complete gcb _git_checkout
__git_complete gb  _git_branch
__git_complete gba _git_branch
__git_complete gbd _git_branch
__git_complete gbD _git_branch
__git_complete gbrd _git_push
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

# npm alias
alias ni='npm install'          # パッケージインストール
alias nis='npm install --save'  # 依存関係を保存してインストール
alias nid='npm install --save-dev'  # 開発用依存関係インストール
alias nr='npm run'              # npmスクリプト実行
alias nn='npm run dev'          # 開発用スクリプト実行
alias nb='npm run build'        # ビルドスクリプト実行
alias nt='npm test'             # テスト実行
alias nun='npm uninstall'       # パッケージアンインストール
alias ns='npm start'            # 開発用スクリプト実行

# next.js alias
alias n='npm run dev'
alias rn='rm -r .next/'
alias rnn='rm -r node_modules/'

# venv alias
alias "venvr"='source venv/Scripts/activate'
alias "venvd"='deactivate'
alias "venvc"='python -m venv venv'
alias "venvi"='pip install -r requirements.txt'

alias ip='ipconfig'

# 履歴設定
export HISTFILE=~/.bash_history    # 履歴ファイルのパス
export HISTSIZE=1000              # 履歴の保存件数
export HISTFILESIZE=2000          # 履歴ファイルの最大サイズ
export HISTCONTROL=ignoredups:erasedups  # 重複したコマンドを無視・削除
export HISTIGNORE="set +o*:set -o*"  # set +o/set -o コマンドを履歴から除外
shopt -s histappend               # セッション間で履歴を追記
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND" # セッション間で同期
export PATH="$HOME/.bun/bin:$PATH"

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