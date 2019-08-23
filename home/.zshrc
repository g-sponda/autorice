ZSH=/usr/share/oh-my-zsh/
ZSH_CUSTOM=~/.config/zsh/
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="true"
plugins=(
    git
    z
    cp
    sudo
    fancy-ctrl-z
    fzf
    virtualenvwrapper
)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

[[ -f "$ZSH/oh-my-zsh.sh" ]] \
	&& source $ZSH/oh-my-zsh.sh

[[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] \
    && source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] \
    && source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

export PATH=$PATH:/opt/ccloud-0.2.1/bin
autoload -U compinit && compinit

export ANSIBLE_COW_SELECTION=elephant-in-snake

export TERM=xterm-256color
eval $(thefuck --alias)

export GOPATH=$HOME/Projects/go
export PATH=$PATH:/opt/azure-cli/bin:$GOPATH/bin
