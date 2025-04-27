export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export EDITOR='nvim'
export LIBGL_ALWAYS_SOFTWARE=1 # 禁用wslg硬件加速

# 加载pure prompt theme
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

alias ll="exa -al --icons"
alias ls="exa -l --icons"
alias vim="nvim"
alias cl="clear"
alias ..="cd .."

# 输入命令时，根据历史记录提供灰色自动补全建议
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# 将补全快捷键改为 \（反斜杠）
bindkey '\\' autosuggest-accept

# zsh-completions 为更多命令提供补全规则
fpath+=~/.zsh/plugins/zsh-completions/src
autoload -U compinit && compinit

# 实时高亮命令，红色无效命令，绿色有效命令
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 快速git命令补全（独立于omz)
source ~/.zsh/plugins/gitfast/gitfast.plugin.zsh

# 输入命令前缀之后，按方向键搜索历史记录
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
