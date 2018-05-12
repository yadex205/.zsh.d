# Configure zsh behavior

## Configure history behavior
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt hist_ignore_dups

## Define prompt
export PROMPT="[%n@%m]%# "
export RPROMPT="%1(v|%1v|)[%~]"

## Setup VCS_INFO
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats "[%b]"
zstyle ':vcs_info:*' actionformats "[%b %a]"

## Setup keybind (like emacs)
bindkey -e

## Setup completion with zsh-completions
## Following is based on compinstall output
zstyle :compinstall filename '${HOME}/.zshrc'
fpath=(/usr/local/share/zsh-completions $fpath)
autoload -Uz compinit
compinit

## Prevent from PATH overlaps
typeset -U path cdpath fpath manpath


## Define precmd()
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# Setup direnv integration
eval "$(direnv hook zsh)"


# Setup rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# Setup nvm
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"

# Setup emacs cask
export PATH="$HOME/.cask/bin:$PATH"


# Setup python installed by Homebrew
export PYTHONUSERBASE="$HOME/.local"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"


# Setup coreutils commands installed by Homebrew
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Define environment variables
export PATH="$HOME/.local/bin:$PATH"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR="emacs"
export MAKE_OPTS="-j8"
export MAKEOPTS="$MAKE_OPTS"


# Define aliases
alias ll="ls -l"
alias la="ls -a"
alias ffplay="ffplay -x 640 -y 360 -loop 0 -window_title ffplay"
