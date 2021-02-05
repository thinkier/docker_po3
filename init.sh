#!/bin/sh

unzip /tmp/po3.zip
cp /app/mods/*.jar ./mods/

java -Xmx8192M -Xms2048M -jar forge-1.12.2-14.23.5.2854.jar nogui
