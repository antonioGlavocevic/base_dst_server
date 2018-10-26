#!/bin/sh
# Update and Restart server

# Stop current instance if running
screen -dr dst_server1 -X quit
screen -dr dst_server2 -X quit

# Backup dedicated_server_mods_setup.lua as app_update overwrites it
cp /home/ubuntu/Steam/steamapps/server_dst/mods/dedicated_server_mods_setup.lua /home/ubuntu/.klei/dedicated_server_mods_setup.lua

# Run app update
/home/ubuntu/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/ubuntu/Steam/steamapps/server_dst +app_update 343050 validate +quit
sleep 10

# Restore dedicated_server_mods_setup.lua backup
cp /home/ubuntu/.klei/dedicated_server_mods_setup.lua /home/ubuntu/Steam/steamapps/server_dst/mods/dedicated_server_mods_setup.lua
sleep 1

# Start Master and Caves
sh /home/ubuntu/Steam/steamapps/server_dst/bin/restart_master.sh
sh /home/ubuntu/Steam/steamapps/server_dst/bin/restart_cave.sh
