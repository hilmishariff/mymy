#!/bin/bash

cd ~/home/developer/src/hibitcoin

# activate abe virtual env
workon abe

# start abe service on port 2750 for data loading
python Abe/abe.py --config abe-data.conf &
