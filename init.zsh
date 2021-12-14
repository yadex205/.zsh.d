# Create symbolic link to me on ${HOME} !

#############################################
# Zsh itself behaviors                    #
#############################################

## History
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000
setopt hist_ignore_dups

# Keybind
bindkey -e

# Prompt
export PROMPT="[%n@%m]%# "
export RPROMPT="%1(v|%1v|)[%~]"

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats "[%b]"
zstyle ':vcs_info:*' actionformats "[%b %a]"

precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# Completion
zstyle :compinstall filename '${HOME}/.zshrc'
fpath=($HOME/.zsh-completions $fpath)

autoload -Uz compinit
compinit


#############################################
# Shell environment                         #
#############################################

# Common variables
export PATH="$HOME/.local/bin:$HOME/usr/bin:$PATH"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Alias
alias ll="ls -l"
alias la="ls -a"
alias ffplay="ffplay -x 640 -y 360 -loop 0 -window_title ffplay"

# Default editor
export EDITOR="emacs"

# direnv
if ! type direnv > /dev/null; then
    echo "[zsh] Warn: direnv not found"
else
    eval "$(direnv hook zsh)"
fi


#############################################
# Programming                               #
#############################################

# Makefile
export MAKE_OPTS="-j8"
export MAKEOPTS="$MAKE_OPTS"

# Node.js
if [ -s "$HOME/.n/bin/n" ]; then
    export N_PREFIX="$HOME/.n"
    export PATH="$HOME/.n/bin:$PATH"
fi

# Rust
export PATH="$HOME/.cargo/bin:$PATH"
