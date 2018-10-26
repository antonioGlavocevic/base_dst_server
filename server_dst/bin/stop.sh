#!/bin/sh
# Stop Master and Caves
sh /home/ubuntu/Steam/steamapps/server_dst/bin/master_stop.sh
sh /home/ubuntu/Steam/steamapps/server_dst/bin/cave_stop.sh
while screen -ls | grep -qE 'dst_server1|dst_server2'
do
  sleep 1
done
DATE=`date '+%Y-%m-%d_%H-%M-%S'`
mkdir -p /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/logs
mkdir -p /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/logs
if [ -e /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/server_log.txt ]
then
  mv /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/server_log.txt /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Master/logs/server_log_${DATE}.txt
fi
if [ -e /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/server_log.txt ]
then
  mv /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/server_log.txt /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer/Caves/logs/server_log_${DATE}.txt
fi
