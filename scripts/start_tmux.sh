#!/bin/zsh

#------------------------------------
# This script is used for init tmux
# -----------------------------------
#
# Create by Yuechuan 2019.7.25


tmux new -s init # 后台启动 init 会话
tmux rename-window -t "init:1" lo # 重命名 init 会话第一个窗口为 lo

tmux neww -a -n ssh -t init
tmux send -t "init:ssh" "ssh xiao@work" Enter

tmux neww -a -n vim -t init 
tmux split-window -v -t "init:vim"

