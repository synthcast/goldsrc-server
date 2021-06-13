#!/bin/bash

sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libsdl2-2.0-0:i386 lib32gcc1 steamcmd -y

ln -s /usr/games/steamcmd steamcmd
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
mkdir server-files/
./steamcmd.sh +runscript install
mkdir ~/.steam/sdk32/
cp server-files/steamclient.so ~/.steam/sdk32

