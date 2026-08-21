#!/usr/bin/env bash

set -euo pipefail

# 安装 SSH 服务端。
sudo apt-get update
sudo apt-get install -y openssh-server sshfs

# 启动并设置为开机自动启动 SSH 服务。
sudo systemctl enable --now ssh

# 启动说明：
#   查看服务状态：sudo systemctl status ssh
#   启动服务：    sudo systemctl start ssh
#   停止服务：    sudo systemctl stop ssh
#   重启服务：    sudo systemctl restart ssh
#   SSH 默认端口为 22，远程连接示例：ssh 用户名@服务器地址
