#!/bin/sh
mkdir /server
cd /server
wget -O tekkit.zip https://servers.technicpack.net/Technic/servers/tekkit-2/Tekkit-2_Server_v1.0.0.zip

unzip tekkit.zip mods/* config/* scripts/*
