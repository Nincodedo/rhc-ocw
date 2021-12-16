FROM debian:buster-slim AS build
RUN apt-get update \
  && apt-get install jq -y --no-install-recommends \
  && apt-get install curl -y --no-install-recommends \
  && apt-get install wget -y --no-install-recommends \
  && apt-get install ca-certificates -y --no-install-recommends \
  && apt-get install dos2unix -y --no-install-recommends \
  && apt-get install unzip -y --no-install-recommends \
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
RUN apk --no-cache add curl && apk --no-cache add jq
RUN wget -P /app/mods https://media.forgecdn.net/files/3546/679/fabric-api-0.44.0%2B1.18.jar \
  && wget -P /app/mods https://github.com/Nincodedo/mc-server-description/releases/download/2.0.0/mc-server-description-2.0.0.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3540/921/deathlog-0.2.3%2B1.18.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3541/965/rightclickharvest-1.5.1.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3524/837/cloth-config-6.0.42-fabric.jar \
  && wget -P /app/mods https://cdn.modrinth.com/data/GSw2U2lp/versions/1.0.1/ihgm-1.0.1.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3523/820/incantationem-1.1.2%2B1.18-pre1.jar \
  && wget -P /app/mods https://cdn.modrinth.com/data/EAe3MQt5/versions/1.0.1.18/crowmap-1.18-1.0.1.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3559/916/towers_of_the_wild_reworked-2.0.0.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3549/487/fabrication-1.18-2.2.1-exp4.jar \
  && wget -P /app/mods https://cdn.modrinth.com/data/BlRLr0FS/versions/1.1.2/disguiselib-1.1.2-fabric.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3549/256/taterzens-1.6.4-fabric.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3565/566/lithium-fabric-mc1.18.1-0.7.6.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3551/560/dynview.fabric-1.18-1.5.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3542/373/textile_backup-2.3.0-1.18.jar
LABEL org.opencontainers.image.source = "https://github.com/Nincodedo/rhc-ocw"
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
