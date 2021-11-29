FROM debian:buster-slim AS build
RUN apt-get update \
  && apt-get install jq -y --no-install-recommends \
  && apt-get install curl -y --no-install-recommends \
  && apt-get install wget -y --no-install-recommends \
  && apt-get install ca-certificates -y --no-install-recommends \
  && apt-get install dos2unix -y --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
RUN mkdir /datapacks
COPY scripts/downloadVanillaTweaksPack.sh .
RUN dos2unix /downloadVanillaTweaksPack.sh /downloadVanillaTweaksPack.sh
RUN /downloadVanillaTweaksPack.sh /datapacks/

FROM docker/compose
RUN mkdir -p /app/ocw-minecraft /app/mods /app/datapacks /config /data/defaultconfigs
WORKDIR /app
COPY --from=build /datapacks/* /app/datapacks/
COPY datapacks/ /app/datapacks/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
RUN dos2unix /app/resetWorld.sh /app/resetWorld.sh
COPY config/* /config/
RUN apk --no-cache add curl
RUN wget -P /app/mods https://media.forgecdn.net/files/3530/684/fabric-api-0.42.8%2B1.18.jar \
  && wget -P /app/mods https://github.com/Nincodedo/mc-server-description/releases/download/2.0.0/mc-server-description-2.0.0.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3536/188/deathlog-0.2.2%2B1.18.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3521/707/mcf-reap-1.7.0-21w44a.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3537/633/renderdistance-1.18-rc1-1.0.0.jar
LABEL org.opencontainers.image.source = "https://github.com/Nincodedo/rhc-ocw"
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
