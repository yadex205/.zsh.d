# Setup ASDF version manager

if [ -s "$HOME/.asdf/asdf.sh" ]; then
  . $HOME/.asdf/asdf.sh

  fpath=(${ASDF_DIR}/completions $fpath)
  compinit
fi
