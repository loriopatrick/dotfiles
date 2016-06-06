clear; echo '
                             |
                             _
                        ----/_\----
            x--------------( . )--------------x
                            ---
                           (___) 


                       LETS DO THIS!
'

source ~/.git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWSTASHSTATE=true
export PS1='\[\033[1;34m\]\u\[\033[0;30m\]@\[\033[0;32m\]\W\[\e[0m\]$(__git_ps1 " \[\033[0;30m\][\[\e[31;1m\]%s\[\033[0;30m\]]$\[\e[0m\]") '
alias gil="git log --decorate --graph --oneline"
export EDITOR=vim
export BROWSER=chromium

alias ls='ls -G'
export TERMINAL=xterm
export TERM=xterm-256color

export ANDROID_HOME=/Users/plorio/Library/Android/sdk
