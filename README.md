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
