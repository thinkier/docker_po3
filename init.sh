#!/bin/sh

unzip /tmp/po3.zip
cp /app/mods/*.jar ./mods/

java -jar /app/forge-1.12.2-14.23.5.2838-installer.jar --installServer

java -Xmx6144M -Xms2048M -jar forge-1.12.2-14.23.5.2838-universal.jar
