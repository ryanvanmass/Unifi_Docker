#!/bin/bash
if [ "$(ls -A /Config)" ]
then
        rm -rf /usr/lib/unifi
        ln -s /Config /usr/lib/unifi
else
        cp -r /usr/lib/unifi/* /Config
        rm -rf /usr/lib/unifi
        ln -s /Config /usr/lib/unifi
fi

java -jar /usr/lib/unifi/lib/ace.jar start