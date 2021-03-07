FROM docker/compose
RUN mkdir /app
WORKDIR /app
COPY datapack/ /app/
COPY docker-compose.yaml /app/docker-compose.yaml
COPY scripts/resetWorld.sh /app/resetWorld.sh
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
