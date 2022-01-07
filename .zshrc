#####################
# command alias
#####################
case ${OSTYPE} in
    darwin*)
        alias l='ls -G'
        alias ll='ls -G'
        alias la='ls -laG'
        alias ls='ls -G'
        alias sl='ls -G'
        alias nvim='vim'
        export HOMEBREW_NO_ANALYTICS=1
        ;;
    linux*)
        alias l='ls -ltr --color=auto'
        alias ll='ls -ltr --color=auto'
        alias ls='ls -ltr --color=auto'
        alias sl='ls -ltr --color=auto'
        alias vim='nvim'
        ;;
esac

# ls after cd
chpwd() { ls }

# Git
alias gadd='git add'
alias gbranch='git branch'
alias gcheckout='git checkout -b'
alias gclone='git clone'
alias gcom='git commit -m'
alias gcommit='git commit -m'
alias gdiff='git diff'
alias glog='git log'
alias gpush='git push'
alias grebase='git rebase origin/master'
alias gs='git status'

# Python dev
alias prun='poetry run python'
alias ptest='poetry run pytest'

# Docker
alias dexec='docker exec -it'
alias dup='docker-compose up'
alias ddown='docker-compose down'

# Other alias
alias v='nvim'
alias vi='nvim'

alias mkdir='mkdir -p'

alias back='pushd'

alias flake8='flake8 --max-line-length=100'

alias openssl_verify_cert='openssl s_client -showcerts -connect'

alias ssh-keygen='ssh-keygen -t ed25519'

#####################
# pushd
#####################

# Enable pushd
setopt auto_pushd

# Delete duplicated pushd
setopt pushd_ignore_dups

#####################
# compinit
#####################

# Enable compinit
autoload -Uz compinit && compinit

# Display file list with colors
zstyle ':completion:*:default' list-colors di=4 ex=33 '=*.c=35'

#####################
# Prompt settings
#####################
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u(%b)%f"
zstyle ':vcs_info:*' actionformats '(%b|%a)'
precmd () { vcs_info }

# Prompt
#PROMPT='%F{004}%n@%m:%f%F{002}%d%f (%?) ${vcs_info_msg_0_}
PROMPT='%F{blue}%n@%m:%f%F{green}%d%f (%?) ${vcs_info_msg_0_}
%# '

#####################
# Other settings
#####################

# Disable beep
setopt no_beep
setopt nolistbeep

# Share history
setopt share_history

# Hidden duplicated history
setopt histignorealldups

# Charset
export LANG=ja_JP.UTF-8

# History config
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
