# Create symbolic link to me on ${HOME} !

ZSHHOME=$HOME/.zsh.d
ZSH_SECRETS=$ZSHHOME/secrets

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for zshfile in $ZSHHOME/*.zsh; do
        echo "[zsh] Load $zshfile"
        source $zshfile
    done
fi

if [ -d $ZSH_SECRETS -a -r $ZSH_SECRETS -a -x $ZSH_SECRETS ]; then
    for zshfile in $ZSH_SECRETS/*.zsh; do
        echo "[zsh] Load secret $zshfile"
        source $zshfile
    done
fi
