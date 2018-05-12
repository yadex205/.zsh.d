# Setup nvm
export NVM_DIR="$HOME/.nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then
    \. "$NVM_DIR/nvm.sh"
else
    echo '[zsh] Warn: Cannot initialize nvm.'
fi
