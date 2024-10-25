export CLICOLOR=1
export EDITOR='nvim'
export PS1='%n@%m:%F{yellow}%~%f%% '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# export PATH="/opt/homebrew/anaconda3/bin:$PATH"  # commented out by conda initialize
export PATH="/usr/local/texlive/2024/bin/universal-darwin:$PATH"
