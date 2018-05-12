## Following is based on compinstall output
## Prevent from PATH overlaps
zstyle :compinstall filename '${HOME}/.zshrc'
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit

## Setup completion with zsh-completions
typeset -U path cdpath fpath manpath
