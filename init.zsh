# Create symbolic link to me on ${HOME} !

ZSHHOME=$HOME/.zsh.d
ZSH_INITS=$ZSHHOME/inits
ZSH_SECRETS=$ZSHHOME/secrets

function load_conf_directory() {
    local target_dir=$1

    if [ -d $target_dir -a -r $target_dir -a -x $target_dir ]; then
        for zshfile in $target_dir/*.zsh; do
            [[ `basename $zshfile` == '*.zsh' ]] && break

            source $zshfile
            local filename=${zshfile#${ZSHHOME}/}
            echo "[zsh] $filename loaded."
        done
    fi
}

load_conf_directory $ZSH_INITS
load_conf_directory $ZSH_SECRETS
