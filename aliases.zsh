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

# GitHub
alias ghprcreate='cat ${CODESPACE_VSCODE_FOLDER}/.github/pull_request_template.md | sed -e "s/insert jira link/PROJECT-1/" | sed -e "/insert description/d" | gh pr create --fill --assignee @me --body-file -'

# aws
alias asl="aws sso login"

# cdk
alias cdk="npx cdk"
alias expcdk='export | grep "\(CDK\|AWS\)"'

# Rush
alias rua="rush add --exact -p"
alias rui="rush install"
alias ruit="rush install -t ."
alias ruu="rush update"
alias ruuf="rush update --full"
alias ruufp="rush update --full --purge"
alias rub="rush build --verbose"
alias rubt="rush build -t . --verbose"
alias rxb="rushx build"
alias rxbw="rushx build --watch"
alias rxw="rushx watch"
alias rxi="rushx integration"
alias rxiw="rushx integration --watch"