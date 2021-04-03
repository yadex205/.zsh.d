export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if ! type pyenv > /dev/null; then
  echo '[zsh] Warn: pyenv not found'
else
  eval "$(pyenv init -)"
fi
