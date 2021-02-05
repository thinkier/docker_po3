#!/bin/sh

unzip /tmp/po3.zip
cp /app/mods/*.jar ./mods/

java -Xmx6144M -Xms2048M -jar /app/forge-1.12.2-14.23.5.2838-universal.jar nogui
