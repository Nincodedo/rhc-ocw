FROM docker/compose
RUN mkdir /app /app/ocw-minecraft
WORKDIR /app
COPY datapack/ /app/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY docker.env /app/ocw-minecraft/docker.env
COPY scripts/resetWorld.sh /app/resetWorld.sh
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
