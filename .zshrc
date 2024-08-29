export CLICOLOR=1
export EDITOR='nvim'
export PS1='%n@%m:%F{yellow}%~%f%% '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/xutony/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/xutony/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/xutony/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/xutony/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


