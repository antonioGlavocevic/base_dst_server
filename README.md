## Prerequisites
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get install lib32gcc1
    sudo apt-get install lib32stdc++6
    sudo apt-get install libcurl4-gnutls-dev:i386
    mkdir /home/ubuntu/steamcmd
    cd /home/ubuntu/steamcmd
    wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
    tar -xvzf steamcmd_linux.tar.gz
    ./steamcmd.sh
    login anonymous
    force_install_dir /home/ubuntu/Steam/steamapps/server_dst
    app_update 343050 validate
    quit
    cd /home/ubuntu/Steam/steamapps/server_dst/bin/
    screen -S "DST Server" ./dontstarve_dedicated_server_nullrenderer

## Setup
./server_dst goes to /home/ubuntu/Steam/steamapps/server_dst

    cp -r ./server_dst/* /home/ubuntu/Steam/steamapps/server_dst

./MyDediServer goes to /home/ubuntu/.klei/DoNotStarveTogether

    rm -rf /home/ubuntu/.klei/DoNotStarveTogether/MyDediServer
    cp -r ./MyDediServer /home/ubuntu/.klei/DoNotStarveTogether

## Schedule
    crontab -e

Select /bin/nano

    0 6 * * * sh /home/ubuntu/Steam/steamapps/server_dst/bin/update.sh

and press CTRL + X and Y for save and quit 
