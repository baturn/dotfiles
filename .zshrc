export ZSH="$HOME/.oh-my-zsh" 
ZSH_THEME="awesomepanda"
COMPLETION_WAITING_DOTS="true"
  
export UPDATE_ZSH_DAYS=13
  
ZSH_TMUX_AUTOSTART=true
source $ZSH/oh-my-zsh.sh
alias rtest="bin/rails test"
alias rcon="bin/rails console"
alias server="rm /tmp/overmind.sock || true && $(pwd)/script/ser    ver"
alias debug-server="rm /tmp/overmind.sock || true && $(pwd)/scri    pt/server --debug"
alias commit="git commit -m"
alias push="git push origin"
export PATH="$PATH:$HOME/.rvm/bin"
