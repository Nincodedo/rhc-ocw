# OCW Minecraft Servers [![Main Build](https://github.com/Nincodedo/rhc-ocw/actions/workflows/build.yml/badge.svg)](https://github.com/Nincodedo/rhc-ocw/actions/workflows/build.yml)

This is the current server orchestration for OCW's Minecraft servers. It uses [itzg's Minecraft Docker image](https://github.com/itzg/docker-minecraft-server).

## Minecraft Radical Hardcore
Radical Hardcore (RHC) starts up a Minecraft server in Hardcore mode with one additional rule. If anyone dies, the entire server is wiped and started anew.

## Minecraft Manhunt
Minecraft Manhunt is based off Dream's Minecraft Manhunt Youtube series. Currently uses [this Spigot plugin](https://www.spigotmc.org/resources/manhunt-1-16x-1-18x.86708/) for game management and [a log watcher](Dockerfile-log-watcher-manhunt) for restarting the server after games are completed.
