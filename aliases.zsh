# Basic aliases
alias ls="ls --color=auto"
alias ll="ls -alFh"
alias -g "..."="../.."
alias -g "...."="../../.."
alias -g "....."="../../../.."

# Git
alias gbv="git branch -v -v"
alias gcleanx='gclean -x'
alias gls='git ls-files'
alias grollback="git reset --mixed HEAD~1"
alias gtv='git tag -n | sort -V'

# aws
alias asl="aws sso login"

# cdk
alias cdk="npx cdk"
alias expcdk='export | grep "\(CDK\|AWS\)"'

# Rush
alias rui="rush install"
alias ruu="rush update"
alias ruuf="rush update --full"
alias ruufp="rush update --full --purge"
alias rub="rush build --verbose"
alias rubt="rush build -t . --verbose"
alias rxb="rushx build"
alias rxw="rushx watch"
alias rxi="rushx integration"
alias rxiw="rushx integration --watch"

# kompasbank
alias ki="./kompas.sh install"
alias kb="./kompas.sh build"
