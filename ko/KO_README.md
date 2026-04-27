# git-bash-alias

Git Bash 작업 효율성을 크게 향상시키는 커스텀 별칭 컬렉션입니다. 반복적인 명령어를 단축하고 개발 워크플로우를 효율화합니다.

[English](../README.md) | [日本語](../jp/JP_README.md)

## 개요

이 저장소는 Windows 환경에서 Git Bash를 사용할 때 편리한 별칭 설정을 제공합니다. 일상적인 Git 작업과 셸 명령어를 쉽게 실행할 수 있도록 하는 설정 파일이 포함되어 있습니다.

## 빠른 시작

> **참고:** 기존 dotfile이 있다면 먼저 백업하세요 (예: `cp ~/.bashrc ~/.bashrc.bak`). 아래 명령은 덮어씁니다.

### Windows (Git Bash)

Windows용 파일은 저장소 루트에 위치합니다.

```bash
git clone https://github.com/takaaaaaan/git-bash-alias.git
cd git-bash-alias
cp .bashrc .bash_profile ~/        # ~/ 는 C:\Users\<USERNAME>\ 를 가리킵니다
# Git Bash 재시작
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

## 설치 시 참고 사항

- 위의 `cp` 명령은 기존의 `~/.bashrc` / `~/.zshrc` 를 **덮어씁니다**. 사용자 정의가 있다면 수동으로 병합하세요.
- Linux/macOS 버전은 플랫폼별 경로에 맞게 조정되어 있습니다 (`venv/Scripts/activate` 대신 `venv/bin/activate`, `ipconfig` 대신 `ip addr` / `ifconfig`, conda는 `Scripts/` 가 아닌 `bin/` 하위).
- Linux에서 별칭의 git 자동완성은 `bash-completion` 이 필요합니다. macOS (zsh)에서는 `compinit` 을 통해 로드됩니다.

## 주요 기능

- 자주 사용하는 Git 명령어 단축키
- 디렉토리 작업 효율화
- 사용자 정의 가능한 별칭 설정

## 사용자 정의 방법

`.bashrc` 파일을 편집하여 자신만의 별칭을 추가하거나 수정할 수 있습니다. 별칭 추가 방법:

```bash
alias 새_명령어='실행할_명령어'
```

## 권장 추가 설정

다음과 같은 설정을 추가하여 더욱 편리하게 사용할 수 있습니다:

- 프로젝트별 별칭
- 자주 사용하는 디렉토리로의 단축키
- 사용자 정의 함수 추가

## 문제 해결

- 별칭이 반영되지 않는 경우 Git Bash를 재시작하세요
- 경로가 올바르게 설정되어 있는지 확인하세요
- 파일 권한을 확인하세요

## 기여

개선 제안이나 버그 보고는 Issue나 Pull Request로 부탁드립니다.
