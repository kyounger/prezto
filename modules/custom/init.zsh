# Set the list of directories that Zsh searches for programs.
path=(
  ~/bin
  /usr/local/heroku/bin
  $path
)

if [[ -a ~/.localrc ]]
    then
        source ~/.localrc
    fi

source ~/.dotfiles/system/aliases.zsh

export EDITOR='vim'
export VISUAL='vim'


