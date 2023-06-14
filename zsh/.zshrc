export BROWSER='/usr/bin/google-chrome-stable'
HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=$HISTSIZE

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
#USE_POWERLINE="true"

#if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#  source /usr/share/zsh/manjaro-zsh-config
#fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

#===================power10k=====================

source ~/.zsh/themes/power10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  
#===================autosuggestion===============

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

#====================alias========================
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -al"
alias cl="clear"
alias ..="cd .."
alias tp="bash ~/.touping.sh &"
alias vim="nvim"
source /usr/share/nvm/init-nvm.sh
