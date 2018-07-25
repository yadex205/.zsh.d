if ! type thefuck > /dev/null; then
    echo '[zsh] Warn: thefuck not found'
else
    eval $(thefuck --alias)
fi
