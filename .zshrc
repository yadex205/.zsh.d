# Create symbolic link to me on ${HOME} !

export ZSHHOME=$HOME/.zsh.d
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for zshfile in $ZSHHOME/*.zsh; do
        source $zshfile
    done
fi
