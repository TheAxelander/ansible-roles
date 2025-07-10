export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.dotnet:$HOME/.dotnet/tools:$PATH
export DOTNET_ROOT=$HOME/.dotnet
export BAT_THEME=gruvbox-dark
export GPG_TTY=$(tty)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(fzf-tab git dirhistory docker docker-compose dotnet zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias exa="exa -la"
alias batp="bat --plain"

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Additional fzf-tab config
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# include hidden dirs
setopt globdots && zstyle ':completion:*' special-dirs true
# preview directory's content with eza when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -a -1 --color=always $realpath'
# show SSH hosts from config file
zstyle ':completion:*:*:ssh:*' hosts $(awk '/^Host / {for (i=2; i<=NF; i++) print $i}' ~/.ssh/config)
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'
# Run enable-fzf-tab
enable-fzf-tab

# Installing navi shell widget
eval "$(navi widget zsh)"
