# Set the list of directories that Zsh searches for programs.
path=(
  ~/bin
  $path
)

if [[ -a ~/.localrc ]]; then
    source ~/.localrc
fi

source ~/.dotfiles/system/aliases.zsh


export EDITOR='vim'
export VISUAL='vim'

if [[ "$(uname)" == "Darwin" ]]; then
    # custom brewfile stuff
    export HOMEBREW_BREWFILE=~/.dotfiles/Brewfile

    if [ -f $(brew --prefix)/etc/brew-wrap ]; then
    source $(brew --prefix)/etc/brew-wrap
    fi
fi

bindkey 'OA' up-line-or-search
bindkey 'OB' down-line-or-search
setopt IGNORE_EOF
