# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="jispwoso"
# export ZSH_THEME="powerlevel9k/powerlevel9k"
# export ZSH_THEME="agnoster"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)

# colorcode 
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="false"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="false"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  colorize 
  compleat 
  dirpersist 
  git 
  gulp 
  history 
  cp
  vscode
  tmux
  osx
  docker
  docker-compose
  zsh_reload
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# source /usr/local/opt/nvm/nvm.sh

# autoload -U add-zsh-hook
# load-nvmrc() {
#   if [[ -f .nvmrc && -r .nvmrc ]]; then
#     nvm use &> /dev/null
#   elif [[ $(nvm version) != $(nvm version default)  ]]; then
#     nvm use default &> /dev/null
#   fi
# }
# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
# fortune

# set alias here
alias clr='clear'
alias zshconfig='code ~/.zshrc'

# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }

# Bash into running container
dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# set commands function
function cd {
  builtin cd "$@" && ls -F
}