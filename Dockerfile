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
RUN mkdir -p /datapacks /mods
COPY scripts/downloadVanillaTweaksPack.sh .
COPY modlist.txt .
RUN dos2unix /downloadVanillaTweaksPack.sh /downloadVanillaTweaksPack.sh
#RUN /downloadVanillaTweaksPack.sh /datapacks/
RUN wget -P mods -i modlist.txt

FROM docker/compose
RUN mkdir -p /app/ocw-minecraft /app/mods /app/datapacks /config /data/defaultconfigs
WORKDIR /app
#COPY --from=build /datapacks/* /app/datapacks/
COPY --from=build /mods/* /app/mods/
COPY datapacks/ /app/datapacks/
COPY docker-compose.yaml /app/ocw-minecraft/docker-compose.yaml
COPY *.env /app/ocw-minecraft/
COPY scripts/resetWorld.sh /app/resetWorld.sh
RUN dos2unix /app/resetWorld.sh /app/resetWorld.sh
COPY config/* /config/
RUN apk --no-cache add curl && apk --no-cache add jq
LABEL org.opencontainers.image.source = "https://github.com/Nincodedo/rhc-ocw"
ENTRYPOINT ["sh", "/app/resetWorld.sh"]
