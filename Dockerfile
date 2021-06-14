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
RUN wget -P /datapacks https://storage.googleapis.com/nincraft-cdn/ocw-minecraft/FastLeafDecay.zip \
  && wget -P /datapacks https://launcher.mojang.com/v1/objects/622bf0fd298e1e164ecd05d866045ed5941283cf/CavesAndCliffsPreview.zip
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
COPY config/*.toml /config/
COPY defaultconfigs/*.toml /data/defaultconfigs/
RUN chown -R 1000:1000 /data/defaultconfigs/
RUN apk --no-cache add curl
RUN wget -P /app/mods https://media.forgecdn.net/files/3327/200/fabric-api-0.34.8%2B1.17.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3344/527/fabric-chunkpregen-0.3.4.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3154/458/itemflexer-1.1.3.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3344/514/crowmap-1.17-1.0.1.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3344/37/lithium-fabric-mc1.17-0.7.0.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3343/650/bettersafebed-fabric-1.17-1.4.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3337/405/rightclickharvest-1.2.4.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3344/942/KeepHeadNames-1.3.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3346/807/FabricSit-1.5.0-1.17.jar \
  && wget -P /app/mods https://media.forgecdn.net/files/3343/950/servertick-mc1.17-1.5.jar \
  && wget -P /app/mods https://github.com/Nincodedo/mc-server-description/releases/download/1.0.0/mc-server-description-1.0.0.jar
LABEL org.opencontainers.image.source = "https://github.com/Nincodedo/rhc-ocw"
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
