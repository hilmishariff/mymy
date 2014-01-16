#!/bin/bash
# kill bitcoind service
$ ps aux | grep bitcoind | grep -v grep | awk '{print $2}' | xargs -I {} kill {}

# wait 10 seconds to make sure data finished written into database
$ sleep 5

# stop broadcast services
$ ps aux | grep notify_broadcast_server.py |  grep -v grep | awk '{print $2}' | xargs -I {} kill {}

# stop abe services
$ ps aux | grep abe.py |  grep -v grep | awk '{print $2}' | xargs -I {} kill {}

# stop redis server
$ redis-cli -p 6379 shutdown
