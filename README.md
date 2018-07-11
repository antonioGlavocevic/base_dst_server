## Prerequisites
    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get install lib32gcc1
    sudo apt-get install lib32stdc++6
    sudo apt-get install libcurl4-gnutls-dev:i386
    chmod a+rw `tty`
    mkdir ~/steamcmd
    cd ~/steamcmd
    wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
    tar -xvzf steamcmd_linux.tar.gz
    ./steamcmd.sh
    login anonymous
    force_install_dir /home/ubuntu/steamapps/server_dst
    app_update 343050 validate
    quit
    cd /home/ubuntu/steamapps/server_dst/bin/
    screen -S "DST Server" ./dontstarve_dedicated_server_nullrenderer

## Setup
./bin goes to ~/steamapps/server_dst/bin

    cp ./bin/* ~/steamapps/server_dst/bin/

./MyDediServer goes to ~/.klei/DoNotStarveTogether

    rm -rf ~/.klei/DoNotStarveTogether/MyDediServer
    cp -r ./MyDediServer ~/.klei/DoNotStarveTogether

## Schedule
    crontab -e

Select /bin/nano

    0 6 * * * sh /home/ubuntu/steamapps/server_dst/bin/update.sh

and press CTRL + X and Y for save and quit 
