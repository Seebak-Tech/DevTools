#!/bin/bash
sudo service ssh restart
tmux new -s default -d
echo 'admin:admin1' | sudo chpasswd
exec "$@" 