#!/bin/bash
echo admin1 | sudo -S service ssh restart
tmux new -s default -d
exec "$@"