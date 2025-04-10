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
alias gc='git checkout'               # 브랜치 전환
alias gcb='git checkout -b'           # 새 브랜치 생성 및 체크아웃
alias gb='git branch'                 # 로컬 브랜치 목록
alias gba='git branch -a'             # 원격 및 로컬 브랜치 목록 표시
alias gbd='git branch -d'             # 브랜치 삭제
alias gbD='git branch -D'             # 강제 브랜치 삭제
alias gbrd='git push origin --delete' # 원격 브랜치 삭제
alias gf='git fetch --prune'          # 원격 저장소 최신 정보 가져오기
alias gm='git merge'                  # 병합
alias gp='git pull'                   # 풀
alias gs='git status && git log --oneline --graph --all'  # 상태와 로그를 한번에 확인
alias gst='git status'                # git 상태
alias gl='git log --oneline --graph --all' # 간단한 로그 표시
alias gll='git log --stat'            # 상세 로그

alias gps='git push'                  # 푸시
alias gpf='git push --force'          # 강제 푸시
alias ga='git add .'                  # 모든 변경사항 스테이징
alias gaa='git add -A'                # 모든 변경사항(삭제된 파일 포함) 스테이징
alias gcm='git commit -m'             # 커밋
alias gca='git commit --amend'        # 마지막 커밋 수정

alias gr='git reset'                  # 리셋
alias grh='git reset --hard'          # 하드 리셋

# 스태시 작업
alias gsta='git stash'                # 스태시 저장
alias gstaap='git stash apply'        # 스태시 적용
alias gstd='git stash drop'           # 스태시 삭제

# 기본 리베이스 작업
alias grb='git rebase'                # 일반 리베이스
alias grbi='git rebase -i'            # 대화형 리베이스
alias grbc='git rebase --continue'    # 리베이스 계속
alias grba='git rebase --abort'       # 리베이스 중단
alias grbs='git rebase --skip'        # 충돌 건너뛰기

# 특정 브랜치에 리베이스
alias grbm='git rebase master'        # master에 리베이스
alias grbd='git rebase develop'       # develop에 리베이스

# 리베이스 전 백업
alias grbb='git branch backup-before-rebase'  # 리베이스 전 백업

# npm alias
alias ni='npm install'          # 패키지 설치
alias nis='npm install --save'  # 의존성 저장하며 설치
alias nid='npm install --save-dev'  # 개발용 의존성 설치
alias nr='npm run'              # npm 스크립트 실행
alias nn='npm run dev'          # 개발용 스크립트 실행
alias nb='npm run build'        # 빌드 스크립트 실행
alias nt='npm test'             # 테스트 실행
alias nun='npm uninstall'       # 패키지 제거

# 히스토리 설정
export HISTFILE=~/.bash_history    # 히스토리 파일 경로
export HISTSIZE=1000              # 히스토리 저장 개수
export HISTFILESIZE=2000          # 히스토리 파일 최대 크기
export HISTCONTROL=ignoredups     # 중복 명령어 무시
shopt -s histappend               # 세션 간 히스토리 추가
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND" # 세션 간 동기화

# 중복된 명령어를 기록하지 않음
export HISTCONTROL=ignoredups:erasedups

# 각 세션 종료 시 히스토리 저장
shopt -s histappend

