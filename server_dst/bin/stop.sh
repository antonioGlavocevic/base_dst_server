#!/bin/sh
# Stop Master and Caves
sh /home/ubuntu/Steam/steamapps/server_dst/bin/master_stop.sh
sh /home/ubuntu/Steam/steamapps/server_dst/bin/cave_stop.sh
sleep 5
DATE=`date '+%Y-%m-%d_%H-%M-%S'`
mkdir /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/logs
mkdir /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/logs
cp /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/server_log.txt /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/logs/server_log_${DATE}.txt
cp /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/server_log.txt /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/logs/server_log_${DATE}.txt
