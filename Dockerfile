FROM docker/compose
RUN mkdir -p /app/ocw-minecraft /mods /config /data/defaultconfigs
WORKDIR /app
COPY datapack/ /app/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
RUN dos2unix /app/resetWorld.sh /app/resetWorld.sh
COPY config/*.toml /config/
COPY defaultconfigs/*.toml /data/defaultconfigs/
RUN chown -R 1000:1000 /data/defaultconfigs/
RUN wget -P /mods https://media.forgecdn.net/files/3038/811/ftb-backups-2.1.1.6.jar
RUN wget -P /mods https://media.forgecdn.net/files/3215/383/Morpheus-1.16.5-4.2.70.jar
RUN wget -P /mods https://media.forgecdn.net/files/3245/79/jei-1.16.5-7.6.1.75.jar
RUN wget -P /mods https://media.forgecdn.net/files/3052/146/FastLeafDecay-v25.jar
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
