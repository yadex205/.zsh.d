function peco-path-find() {
    if [[ $LBUFFER =~ \s*cd\s* ]]; then
        local filepath="$(find . -maxdepth 5 -type d -not -path '*/\.*/*' | peco --prompt 'CHANGE DIRECTORY>')"
        BUFFER=$LBUFFER$filepath
        zle accept-line
    else
        local filepath="$(find . -maxdepth 3 -not -path '*/\.*/*' | peco --prompt 'PATH>')"
        BUFFER=$LBUFFER$filepath
    fi
    CURSOR=$#BUFFER
}
zle -N peco-path-find
bindkey '^h' peco-path-find
