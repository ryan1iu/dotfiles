export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/home/ryan1iu/miniconda3/bin:$PATH
export EDITOR='nvim'
export LIBGL_ALWAYS_SOFTWARE=1 # 禁用wslg硬件加速
HISTFILE=~/.zsh_history # 保存历史记录的文件

# 保留的历史命令条数
HISTSIZE=100000
SAVEHIST=100000

# 自动追加历史，而不是覆盖
setopt APPEND_HISTORY

# 多个终端共享历史
setopt SHARE_HISTORY

# 命令一运行就保存，而不是退出时才保存
setopt INC_APPEND_HISTORY

# 忽略重复命令
setopt HIST_IGNORE_ALL_DUPS

# 输入 Ctrl+D 不退出 shell
setopt IGNORE_EOF

# 加载pure prompt theme
fpath+=(/home/ryan1iu/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

alias ll="exa -al --icons"
alias ls="exa -l --icons"
alias vim="nvim"
alias cl="clear"
alias ..="cd .."
alias sctl="systemctl"

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
# source ~/.zsh/plugins/gitfast/gitfast.plugin.zsh

# 输入命令前缀之后，按方向键搜索历史记录
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
