FROM docker/compose
RUN mkdir /app /app/ocw-minecraft /mods /config
WORKDIR /app
COPY datapack/ /app/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
COPY config/ftbbackups-common.toml /config/
RUN wget -P /mods https://media.forgecdn.net/files/3038/811/ftb-backups-2.1.1.6.jar
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
