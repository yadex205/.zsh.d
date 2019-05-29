# Setup Node.js environment

if [ -s "$HOME/.n/bin/n" ]; then
  export N_PREFIX="$HOME/.n"
  export PATH="$HOME/.n/bin:$PATH"
elif [ -s "$HOME/.nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  \. "$NVM_DIR/nvm.sh"
fi
