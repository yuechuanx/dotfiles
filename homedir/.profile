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
