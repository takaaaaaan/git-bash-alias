# git-bash-alias

Git Bashの作業効率を大幅に向上させるカスタムエイリアスコレクションです。繰り返しの多いコマンドを短縮し、開発ワークフローを効率化します。

[English](../README.md) | [한국어](../ko/KO_README.md)

## 概要

このリポジトリは、Windows環境でGit Bashを使用する際の便利なエイリアス設定を提供します。日常的なGit操作やシェルコマンドを簡単に実行できるようにするための設定ファイルが含まれています。

## クイックスタート

> **注意:** 既存のドットファイルがある場合は事前にバックアップしてください（例：`cp ~/.bashrc ~/.bashrc.bak`）。以下のコマンドは上書きします。

### Windows（Git Bash）

Windows用のファイルはリポジトリのルートに配置されています。

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp .bashrc .bash_profile ~/        # ~/ は C:\Users\<USERNAME>\ を指します
# Git Bashを再起動
```

### Linux

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp linux/.bashrc linux/.bash_profile ~/
source ~/.bashrc
```

### macOS（zsh）

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp mac/.zshrc mac/.zprofile ~/
source ~/.zshrc
```

## インストールに関する注意

- 上記の `cp` コマンドは既存の `~/.bashrc` / `~/.zshrc` を**上書き**します。独自のカスタマイズがある場合は手動でマージしてください。
- Linux/macOS版はプラットフォーム固有のパスに調整されています（`venv/Scripts/activate` の代わりに `venv/bin/activate`、`ipconfig` の代わりに `ip addr` / `ifconfig`、conda は `Scripts/` ではなく `bin/` 配下）。
- Linuxではエイリアスのgit補完に `bash-completion` が必要です。macOS（zsh）では `compinit` 経由で読み込まれます。

## 主な機能

- よく使うGitコマンドのショートカット
- ディレクトリ操作の効率化
- カスタマイズ可能なエイリアス設定

## カスタマイズ方法

`.bashrc`ファイルを編集することで、独自のエイリアスを追加・修正することができます。エイリアスの追加方法：

```bash
alias 新しいコマンド='実行したいコマンド'
```

## 推奨される追加設定

以下のような設定を追加することで、さらに便利に使用できます：

- プロジェクト固有のエイリアス
- よく使うディレクトリへのショートカット
- カスタム関数の追加

## トラブルシューティング

- エイリアスが反映されない場合は、Git Bashを再起動してください
- パスが正しく設定されているか確認してください
- ファイルのパーミッションを確認してください

## ライセンス

MITライセンスの下で公開されています。

## 貢献

改善提案やバグ報告は、IssueやPull Requestでお願いします。
