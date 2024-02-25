#! /bin/bash

SERVER="ubuntu@s4.shadowmanu.com"
SERVER_SAVE_DIR="~/stable/palworld/save"

# Use rsync sync the save folder downstream from the server to the local machine
# Remember to use SSH Config File to use proper (AWS) SSH Key
rsync -avP ./save/ $SERVER:$SERVER_SAVE_DIR