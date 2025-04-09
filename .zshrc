export ZSH="$HOME/.oh-my-zsh" 
cp /workspaces/.codespaces/.persistedshare/dotfiles/awesomepanda.zsh.theme $ZSH/themes/

ZSH_THEME="awesomepanda"
COMPLETION_WAITING_DOTS="true"
  
  
source $ZSH/oh-my-zsh.sh

alias rtest="bin/rails test"
alias rcon="bin/rails console"
alias server="rm /tmp/overmind.sock || true && $(pwd)/script/server"
alias debug-server="rm /tmp/overmind.sock || true && $(pwd)/script/server --debug"
alias gcom="git commit -m"
alias gc="git checkout $1"
alias gb="git checkout -b $1"
alias gpull="git pull"
alias gpush="git push origin"
alias owners="bin/serviceowners $(git diff --name-only master | tr '\n' ' ')"
alias prepdb="bin/rake db:migrate db:test:prepare"
alias fixbootstrap="rm /workspaces/github/tmp/bootstrap.lock"
