#!/bin/bash

# replace placeholders
sed -i 's/#PADDR#/'"$PADDR"'/' config.json
sed -i 's/#HOSTNAME#/'"$HOSTNAME"'/' config.json
sed -i 's/#PORT#/'"$PORT"'/' config.json
sed -i 's/#KEY#/'"$KEY"'/' config.json

# output storage information
df -h

# startup daemon and share
#storjshare daemon -F &
#PID=$!
storjshare start -c config.json --detached
#wait $PID
