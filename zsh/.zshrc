if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

export PATH=$PATH:~/.local/bin
HISTFILE=~/.zhistory
HISTSIZE=100000
SAVEHIST=$HISTSIZE
# export CC=/usr/bin/gcc-6
# export CXX=/usr/bin/g++-6

bindkey '\' autosuggest-accept

#alias
alias cl="clear"
alias ll="ls -l"
alias la="ls -al"
alias vim="nvim"
alias ..="cd .."


[ -f ~/.inshellisense/key-bindings.zsh ] && source ~/.inshellisense/key-bindings.zsh
