#!/bin/zsh

#------------------------------------
# This script is used for init tmux
# -----------------------------------
#
# Create by Yuechuan 2019.7.25

# 后台启动 init 会话
tmux new -s init 
# 重命名 init 会话第一个窗口为 lo
tmux rename-window -t "init:1" lo 

tmux neww -a -n work -t init
tmux send -t "init:work" "swk" Enter
tmux split-window -v -t "init:work"

tmux neww -a -n arch -t init 
tmux send -t "init:arch" "sdy" Enter

# tmux neww -a -n pi -t init 
# tmux send -t "init:pi" "spi" Enter

tmux split-window -v -t "init:vim"

