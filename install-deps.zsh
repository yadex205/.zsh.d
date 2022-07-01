#!/bin/zsh

if ! type git > /dev/null; then
    echo "git not found"
    exit 1
fi

if ! type brew > /dev/null; then
    echo "brew (Homebrew) not found"
    exit 1
fi

# n (Node.js)
if [ ! -d "$HOME/.n" ]; then
    git clone https://github.com/tj/n.git ~/.n
fi

# Pyenv
if [ ! -d "$HOME/.pyenv" ]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
fi

# Rbenv
if [ ! -d "$HOME/.rbenv" ]; then
    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    mkdir -p "$(rbenv root)"/plugins
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
fi

# Homebrew packages
brew update
brew install direnv
