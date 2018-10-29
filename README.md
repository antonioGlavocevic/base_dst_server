## Prerequisites
```
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
/home/ubuntu/Steam/steamapps/server_dst/bin/dontstarve_dedicated_server_nullrenderer
```

## Setup
Run bin/dst_controller resetbase to reset server to clean base state

```
bin/dst_controller resetbase
```

## Schedule
```
crontab -e
```

Select /bin/nano

```
0 6 * * * dst_server_controller update
```

and press CTRL + X and Y for save and quit 
