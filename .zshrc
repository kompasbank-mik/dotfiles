# Enable this to profile zsh startup time
# zmodload zsh/zprof
# timezsh() {
#   shell=${1-$SHELL}
#   for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
# }

# zsh-nvm (https://github.com/lukechilds/zsh-nvm)
export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# History file setup
setopt histignorealldups sharehistory
HISTSIZE=100000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Install necessary packages
if ! dpkg -l zplug &> /dev/null; then sudo apt install zplug; fi
if ! dpkg -l fzf &> /dev/null; then sudo apt install fzf; fi

source /usr/share/zplug/init.zsh

# Spaceship theme
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_TIME_COLOR=white
export SPACESHIP_GIT_STATUS_COLOR=magenta
export SPACESHIP_GIT_SYMBOL=
export SPACESHIP_DOCKER_SHOW=false
zplug "denysdovhan/spaceship-prompt", as:theme

# Bundles from: robbyrussell's oh-my-zsh
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gnu-utils", from:oh-my-zsh
zplug "plugins/jump", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
# zplug "plugins/docker", from:oh-my-zsh
# zplug "plugins/python", from:oh-my-zsh
# zplug "plugins/evalcache", from:oh-my-zsh

# Bundles from: prezto
# zplug "modules/prompt", from:prezto

# Bundles from: zsh-users
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"

# Bundles from "other"
zplug "lukechilds/zsh-nvm"
zplug "supercrabtree/k"

zplug install
zplug load

# Enable menu select on completion
zstyle ':completion:*' menu select

# Load aliases
if [ -e ~/.aliases ]; then
    source ~/.aliases
fi

# kompasbank
export CDK_DEFAULT_ENV=mik
export CDK_DEFAULT_ACCOUNT=474499803817
export CDK_DEFAULT_REGION=eu-central-1

# AWS
export AWS_REGION=eu-central-1          # AWS CLI
export AWS_DEFAULT_REGION=eu-central-1  # AWS SDK
export AWS_SDK_LOAD_CONFIG=1

# Misc. environment vars
# export EDITOR=vi
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8

# Set site specific stuff
# HOSTNAME=$(hostname -s)
# if [ $HOSTNAME = 'bacon' -o $HOSTNAME = 'macbias' ]; then
#     # Set path
#     path[1,0]=/usr/local/opt/curl/bin
#     path[1,0]=/usr/local/sbin
#     #path[1,0]=/usr/local/opt/mysql-client/bin
#     #path[1,0]=/usr/local/opt/coreutils/libexec/gnubin
#     #source /usr/local/share/zsh/site-functions/aws_zsh_completer.sh
# fi

# Set path
# path[1,0]=~/bin
# typeset -U path # force uniq on path

# https://coderwall.com/p/_s_xda/fix-ssh-agent-in-reattached-tmux-session-shells
#fixssh() {
#  for key in SSH_AUTH_SOCK SSH_CONNECTION SSH_CLIENT; do
#    if (tmux show-environment | grep "^${key}" > /dev/null); then
#      value=`tmux show-environment | grep "^${key}" | sed -e "s/^[A-Z_]*=//"`
#      export ${key}="${value}"
#    fi
#  done
#}

# To use fzf in Vim, add the following line to your .vimrc:
# set rtp+=/nfs/home/tba/.linuxbrew/opt/fzf
# if [ -e ~/.fzf.zsh ]; then
#     source ~/.fzf.zsh
# elif [ -e  /usr/local/opt/fzf/shell/completion.zsh ]; then
#     source /usr/local/opt/fzf/shell/completion.zsh
# fi

# Python - Use evalcache if this is needed for speed
# if command -v pyenv 1>/dev/null 2>&1; then
#   export PYENV_ROOT="$HOME/.pyenv"
#   export PATH="$PYENV_ROOT/bin:$PATH"
#   eval "$(pyenv init --path)"
#   eval "$(pyenv init -)"
# fi

# Java
#   brew tap homebrew/cask-versions
#   brew cask install java11
# export JAVA_HOME=$(/usr/libexec/java_home -v11)
