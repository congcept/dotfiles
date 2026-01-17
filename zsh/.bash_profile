export PATH="$PATH:/Library/Python/3.9/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/nguyenducthanhcong/micromamba/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nguyenducthanhcong/micromamba/etc/profile.d/conda.sh" ]; then
        . "/Users/nguyenducthanhcong/micromamba/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nguyenducthanhcong/micromamba/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> coursier install directory >>>
export PATH="$PATH:/Users/nguyenducthanhcong/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
