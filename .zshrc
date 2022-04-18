export ZSH="$HOME/.oh-my-zsh" 
cp /workspaces/.codespaces/.persistedshare/dotfiles/awesomepanda.zsh-theme $ZSH/themes/

ZSH_THEME="awesomepanda"
COMPLETION_WAITING_DOTS="true"
  
  
source $ZSH/oh-my-zsh.sh

alias rtest="bin/rails test"
alias rcon="bin/rails console"
alias server="rm /tmp/overmind.sock || true && $(pwd)/script/server"
alias debug-server="rm /tmp/overmind.sock || true && $(pwd)/script/server --debug"
alias commit="git commit -m"
alias push="git push origin"
