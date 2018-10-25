#update of server
screen -dr dst_server1 -X quit
screen -dr dst_server2 -X quit
cp /home/ubuntu/Steam/steamapps/server_dst/mods/dedicated_server_mods_setup.lua ~/.klei/dedicated_server_mods_setup.lua
cd /home/ubuntu/steamcmd
./steamcmd.sh +login anonymous +force_install_dir /home/ubuntu/Steam/steamapps/server_dst +app_update 343050 validate +quit
sleep 10
cp ~/.klei/dedicated_server_mods_setup.lua /home/ubuntu/Steam/steamapps/server_dst/mods/dedicated_server_mods_setup.lua
sleep 1
sh /home/ubuntu/Steam/steamapps/server_dst/bin/restart.sh
sh /home/ubuntu/Steam/steamapps/server_dst/bin/restart2.sh
