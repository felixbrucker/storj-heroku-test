#!/bin/bash

# replace placeholders
sed -i 's/#PADDR#/'"$PADDR"'/' config.json
sed -i 's/#HOSTNAME#/'"$HOSTNAME"'/' config.json
sed -i 's/#PORT#/'"$PORT"'/' config.json
sed -i 's/#KEY#/'"$KEY"'/' config.json

# startup daemon and shares
#storjshare daemon -F &
#PID=$!
storjshare start -c config.json --detached
#wait $PID
