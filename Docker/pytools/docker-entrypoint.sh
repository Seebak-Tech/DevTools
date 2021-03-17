#!/bin/bash
sudo service ssh restart
HOST_NAME=$(hostname)
export DISPLAY=$HOST_NAME:0.0
tmux new -s default -d
echo 'admin:admin1' | sudo chpasswd
exec "$@" 