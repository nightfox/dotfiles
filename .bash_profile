
# RVM Autoload 

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Bash Completion

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# Alias for hiding and showing hidden files

alias show_hidden_files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

alias hide_hidden_files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Hackerrank Directory Alias

alias hackerrank='cd ~/Workspace/hackerrank'

# Custom PS1 for supporting git

source ~/.git-completion.bash
source ~/.git-prompt.sh

export PS1='\[\e[00;32m\]\u@\h:\[\e[0m\]\[\e[00;37m\] \[\e[0m\]\[\e[00;33m\]\w\[\e[0m\]\[\e[00;36m\]$(__git_ps1)\[\e[0m\]\[\e[00;37m\]\$ \[\e[0m\]'

# Server aliases

# Cron server SSH
alias cron_ssh='ssh ubuntu@cron.vpc.hackerrank.com'

# Private server SSH
alias private_ssh='ssh ubuntu@private.vpc.hackerrank.com'

# Butters server SSH
alias butters_ssh='ssh ubuntu@butters.vpc.hackerrank.com'
PHP_AUTOCONF="/usr/local/bin/autoconf"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="/Users/Archangel/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
