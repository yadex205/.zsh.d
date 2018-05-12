# Setup rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

if ! type rbenv > /dev/null; then
    echo '[zsh] Warn: rbenv not found'
else
    eval "$(rbenv init -)"
fi
