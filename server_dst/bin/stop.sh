#!/bin/sh
# Stop Master and Caves
screen -dr dst_server1 -X -S quit
screen -dr dst_server2 -X -S quit
