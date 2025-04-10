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
alias gc='git checkout'               # ブランチ切り替え
alias gcb='git checkout -b'           # 新しいブランチを作成してチェックアウト
alias gb='git branch'                 # ローカルブランチ一覧
alias gba='git branch -a'             # リモートブランチ，ローカルブレンチ一覧表示
alias gbd='git branch -d'             # ブランチ削除
alias gbD='git branch -D'             # 強制ブランチ削除
alias gbrd='git push origin --delete' # リモートブランチ削除
alias gf='git fetch --prune'          # リモートリポジトリの最新情報取得
alias gm='git merge'                  # マージ
alias gp='git pull'                   # プル
alias gs='git status && git log --oneline --graph --all'  # 状態とログを一度に確認
alias gst='git status'                # git ステータス
alias gl='git log --oneline --graph --all' # 簡易ログ表示
alias gll='git log --stat'            # 詳細ログ

alias gps='git push'                  # プッシュ
alias gpf='git push --force'          # 強制プッシュ
alias ga='git add .'                  # すべての変更をステージング
alias gaa='git add -A'                # すべての変更 (削除されたファイルも含む) をステージング
alias gcm='git commit -m'             # コミット
alias gca='git commit --amend'        # 最後のコミット修正

alias gr='git reset'                  # リセット
alias grh='git reset --hard'          # ハードリセット

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

# npm alias
alias ni='npm install'          # パッケージインストール
alias nis='npm install --save'  # 依存関係を保存してインストール
alias nid='npm install --save-dev'  # 開発用依存関係インストール
alias nr='npm run'              # npmスクリプト実行
alias nn='npm run dev'          # 開発用スクリプト実行
alias nb='npm run build'        # ビルドスクリプト実行
alias nt='npm test'             # テスト実行
alias nun='npm uninstall'       # パッケージアンインストール

# 履歴設定
export HISTFILE=~/.bash_history    # 履歴ファイルのパス
export HISTSIZE=1000              # 履歴の保存件数
export HISTFILESIZE=2000          # 履歴ファイルの最大サイズ
export HISTCONTROL=ignoredups     # 重複したコマンドを無視
shopt -s histappend               # セッション間で履歴を追記
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND" # セッション間で同期

# 重複したコマンドを記録しない
export HISTCONTROL=ignoredups:erasedups

# 各セッション終了時に履歴を保存
shopt -s histappend

