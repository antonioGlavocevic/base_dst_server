function dsts_master_start {
  echo "Starting master on screen $MASTER_SCREEN_NAME"
  cd $DST_SERVER_PATH/bin
  screen -dmS $MASTER_SCREEN_NAME ./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Master
}
function dsts_caves_start {
  echo "Starting caves on screen $CAVE_SCREEN_NAME"
  cd $DST_SERVER_PATH/bin
  screen -dmS $CAVE_SCREEN_NAME ./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Caves
}
function dsts_master_stop {
  echo "Stopping master"
  screen -drS $MASTER_SCREEN_NAME -X stuff ^C
}
function dsts_caves_stop {
  echo "Stopping caves"
  screen -drS $CAVE_SCREEN_NAME -X stuff ^C
}
function dsts_start {
  dsts_master_start
  dsts_caves_start
}
function dsts_stop {
  dsts_master_stop
  dsts_caves_stop

  # Wait for servers to stop
  while screen -ls | grep -qE "$MASTER_SCREEN_NAME|$CAVE_SCREEN_NAME"
  do
    echo "Waiting for servers to stop..."
    sleep 1
  done

  # Backup logs
  DATE=`date '+%Y-%m-%d_%H-%M-%S'`
  mkdir -p $KLEI_PATH/MyDediServer/Master/logs
  mkdir -p $KLEI_PATH/MyDediServer/Caves/logs
  if [ -e $KLEI_PATH/MyDediServer/Master/server_log.txt ]
  then
    mv $KLEI_PATH/MyDediServer/Master/server_log.txt $KLEI_PATH/MyDediServer/Master/logs/server_log_${DATE}.txt
    echo "Backed up master log to $KLEI_PATH/MyDediServer/Master/logs/server_log_${DATE}.txt"
  fi
  if [ -e $KLEI_PATH/MyDediServer/Caves/server_log.txt ]
  then
    mv $KLEI_PATH/MyDediServer/Caves/server_log.txt $KLEI_PATH/MyDediServer/Caves/logs/server_log_${DATE}.txt
    echo "Backed up caves log to $KLEI_PATH/MyDediServer/Caves/logs/server_log_${DATE}.txt"
  fi
}
function dsts_restart {
  dsts_stop
  dsts_start
}
function dsts_update {
  dsts_stop
  # Backup dedicated_server_mods_setup.lua as app_update overwrites it
  cp $DST_SERVER_PATH/mods/dedicated_server_mods_setup.lua $KLEI_PATH/dedicated_server_mods_setup.lua
  # Run app update
  $STEAMCMD_PATH/steamcmd.sh +login anonymous +force_install_dir $DST_SERVER_PATH +app_update 343050 validate +quit
  sleep 10
  # Restore dedicated_server_mods_setup.lua backup
  cp $KLEI_PATH/dedicated_server_mods_setup.lua $DST_SERVER_PATH/mods/dedicated_server_mods_setup.lua
  dsts_start
}
function dsts_peekmaster {
  screen -r $MASTER_SCREEN_NAME
}
function dsts_peekcave {
  screen -r $CAVE_SCREEN_NAME
}
function dsts_resetbase {
  rm -rf $KLEI_PATH/MyDediServer
  cp -r $DIR/../MyDediServer $KLEI_PATH
}
