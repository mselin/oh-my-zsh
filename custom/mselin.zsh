# Add yourself some shortcuts to projects you often work on
# Example:
#
nodescripts=~/dev/node/nodescripts
sidekick=~/dev/iOS/Sidekick-iOS
#
unsetopt share_history

# Git
alias ga='git add .'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'

# leverage an alias from the ~/.gitconfig
#alias gh='git hist'

# Other commands
alias tm='top -o rsize'
alias tu='top -o cpu'
alias cl='clear'
alias tree='nocorrect tree'
alias afind="ack --color -i"
alias la='ls -la'
alias ll='ls -l'
alias scp='noglob scp'
alias curl='noglob curl'

# https://github.com/robbyrussell/oh-my-zsh/issues/31
# noglob Filename generation (globbing) is not performed on any of the words.
alias curl='noglob curl'

# Export ENV for gist cli
# export GITHUB_USER=sfw@simeonfosterwillbanks.com
# export GITHUB_PASSWORD=$(security 2>&1 >/dev/null find-generic-password -gs github.password | sed 's/password: "\(.*\)"/\1/')
# Example of adding item to Keychain
# security add-generic-password -a YOUR_LOCAL_OSX_USER -s github.password -w YOUR_GITHUB_PASSWORD

# history-substring-search
# alias hsh='sed -n "2,/^$/s/^#//p" ~/.oh-my-zsh/plugins/history-substring-search/history-substring-search.zsh | more'

# myIP address
function myip() {
  if [[ `uname` = "Linux" ]]; then
    ifconfig lo | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo         : " $2}'
    ifconfig eth0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "eth0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig eth1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "eth1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  elif [[ `uname` = "Darwin" ]]; then
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
    ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
  fi
}