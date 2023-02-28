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
if ! dpkg -l zplug fzf &> /dev/null; then sudo apt-get update && sudo apt-get install -y zplug fzf; fi
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
zplug "plugins/python", from:oh-my-zsh
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
export PYTHONPATH=/workspaces/kompasbank/module/python-utils/src/python_modules

# AWS
export AWS_REGION=eu-central-1          # AWS CLI
export AWS_DEFAULT_REGION=eu-central-1  # AWS SDK
export AWS_SDK_LOAD_CONFIG=1
