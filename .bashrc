alias v="vi"
alias ta="tmux a"
alias ts='tmux source-file ~/.tmux.conf'
alias vt='vi ~/.tmux.conf'
alias sr="source ~/.bashrc"
alias vr="vi ~/.bashrc"
alias vp="vi ~/.bash_profile"
alias sp="source ~/.bash_profile"
alias ls='ls -A --color=auto'
alias ll='ls -lh'
alias nr='npm run'

# git shortcuts
alias gs='git status'
alias gcm='git commit'
alias ga='git add'
alias gck='git checkout'
alias gb='git branch'
alias gnb='git checkout -b'
alias gst='git stash'
alias gl='git log'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpl='git pull'
alias gps='git push'
alias gr='git remote'

# easier nav
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# disable terminal lock
stty -ixon

alias df='df -h'
alias du='du -h'
# grep results use color
alias grep='grep --color'
alias dir='ls --color=auto --format=vertical'

# The BASH prompt should show "username@hostname:current-directory-path>"
export PS1="\u@\h:\w>"
