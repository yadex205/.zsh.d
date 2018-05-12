# Set prompt format
export PROMPT="[%n@%m]%# "
export RPROMPT="%1(v|%1v|)[%~]"

# Show VCS information on right prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats "[%b]"
zstyle ':vcs_info:*' actionformats "[%b %a]"

# Define precmd()
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
