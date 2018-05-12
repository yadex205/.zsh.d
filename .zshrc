# Create symbolic link to me on ${HOME} !

ZSHHOME=$HOME/.zsh.d
ZSH_INITS=$ZSHHOME/inits
ZSH_SECRETS=$ZSHHOME/secrets

if [ -d $ZSH_INITS -a -r $ZSH_INITS -a -x $ZSH_INITS ]; then
    for zshfile in $ZSH_INITS/*.zsh; do
        echo "[ZSH] Load init   $zshfile"
        source $zshfile
    done
fi

if [ -d $ZSH_SECRETS -a -r $ZSH_SECRETS -a -x $ZSH_SECRETS ]; then
    for zshfile in $ZSH_SECRETS/*.zsh; do
        echo "[ZSH] Load secret $zshfile"
        source $zshfile
    done
fi
