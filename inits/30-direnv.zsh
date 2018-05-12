# Setup direnv integration

if ! type direnv > /dev/null; then
    echo "[zsh] Warn: direnv not found"
else
    eval "$(direnv hook zsh)"
fi
