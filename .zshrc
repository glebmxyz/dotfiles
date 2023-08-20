export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
source /usr/share/nvm/init-nvm.sh

alias dfs="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias toggle-hdmi="source $HOME/.scripts/toggle-hdmi.sh"

function ve {
    local env='venv'
    if [[ -n $@ ]]; then
        env=$@
    fi
    
    source "$env/bin/activate"
}

function cv {
    local file='xclip.out'
    if [[ -n $@ ]]; then
        file=$@
    fi

    xclip -o -selection clipboard > $file
}

