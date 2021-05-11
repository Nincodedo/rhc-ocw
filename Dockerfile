FROM docker/compose
RUN mkdir -p /app/ocw-minecraft /app/mods /app/datapacks /config /data/defaultconfigs
WORKDIR /app
COPY datapacks/ /app/datapacks/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
RUN dos2unix /app/resetWorld.sh /app/resetWorld.sh
COPY config/*.toml /config/
COPY defaultconfigs/*.toml /data/defaultconfigs/
RUN chown -R 1000:1000 /data/defaultconfigs/
RUN wget -P /app/mods -i mod_list.txt
RUN apk --no-cache add curl
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
