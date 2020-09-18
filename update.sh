#!/bin/bash
echo Updating...

git submodule update --recursive --remote

chmod 755 update.sh
chmod +x update.sh
echo Done!
