## Setup
/bin goes to ~/steamapps/server_dst/bin

/MyDediServer goes to ~/.klei/DoNotStarveTogether

## Schedule
crontab -e

Select /bin/nano

0 6 * * * sh /home/dst/server_dst/bin/update.sh

and press CTRL + X and Y for save and quit 
