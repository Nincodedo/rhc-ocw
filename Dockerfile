FROM docker/compose
RUN mkdir -p /app/ocw-minecraft /app/mods /config /data/defaultconfigs
WORKDIR /app
COPY datapack/ /app/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
RUN dos2unix /app/resetWorld.sh /app/resetWorld.sh
COPY config/*.toml /config/
COPY defaultconfigs/*.toml /data/defaultconfigs/
RUN chown -R 1000:1000 /data/defaultconfigs/
RUN wget -P /app/mods https://media.forgecdn.net/files/3038/811/ftb-backups-2.1.1.6.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3215/383/Morpheus-1.16.5-4.2.70.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3245/79/jei-1.16.5-7.6.1.75.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3052/146/FastLeafDecay-v25.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3098/229/NetherPortalFix_1.16.3-7.2.1.jar \
  && wget -P /app/mods https://github.com/Nincodedo/TaffyDAF/releases/download/1.16.5-1.6-nin/taffydaf-1.16.5-1.6-nin.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3190/50/Quick+Harvest-1.16.4-1.2.0.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3285/916/performant-1.16.2-5-3.54m.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3217/166/dynviewdist-1.9.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3227/647/forgery-1.3.4.jar
RUN apk --no-cache add curl
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
