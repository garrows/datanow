#!/bin/bash -e

mongo DataNow --eval "db.dropDatabase()" > /dev/null

MY_PATH="`dirname \"$0\"`"

rm -f ~/.datanow-config.json

node $MY_PATH/../bin/cmd.js --server http://localhost:3000  --loglevel debug --register --username garrows --email glen.arrowsmith@gmail.com --password g --login

node $MY_PATH/../bin/cmd.js --server http://localhost:3000  --loglevel debug --newApp testApp

# node $MY_PATH/../bin/cmd.js --server http://localhost:3000 --loglevel debug --newBoard testBoard --app testApp