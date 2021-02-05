#!/bin/sh

unzip /tmp/po3.zip
cp /app/mods/*.jar ./mods/
chmod +x Install.sh ServerStart.sh

./Install.sh
./ServerStart.sh
