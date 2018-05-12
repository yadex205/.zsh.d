## Following is based on compinstall output
## Prevent from PATH overlaps
zstyle :compinstall filename '${HOME}/.zshrc'
fpath=($HOME/.zsh-completions $fpath)

autoload -Uz compinit
compinit
