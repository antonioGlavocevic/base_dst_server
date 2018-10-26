#!/bin/sh
# Start or Restart Master in screen

# Command line
start_overworld="sh /home/ubuntu/Steam/steamapps/server_dst/bin/master.sh"

# Start or Restart the server
screen -dr dst_server1 -X -S quit
screen -dmS dst_server1 ${start_overworld}
