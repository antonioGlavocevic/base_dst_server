#!/bin/sh
# # Start or Restart Caves in screen

# Command line
start_cave="sh /home/ubuntu/Steam/steamapps/server_dst/bin/cave.sh"

# Start or Restart the server
screen -dr dst_server2 -X -S quit
screen -dmS dst_server2 ${start_cave}
