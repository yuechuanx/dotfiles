#############################################################
# Generic configuration that applies to all shells
#############################################################

source ~/.shell_vars
source ~/.shell_funcs
source ~/.shell_paths
source ~/.shell_aliases
source ~/.iterm2_shell_integration.`basename $SHELL`
# Private/Proprietary shell aliases (not to be checked into the public repo) :)
#source ~/Dropbox/Private/Boxes/osx/.shellaliases

export PATH="$HOME/.cargo/bin:$PATH"
# added by Miniconda3 4.7.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Xiaoy/opt/miniconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/Xiaoy/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Xiaoy/opt/miniconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/Xiaoy/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
