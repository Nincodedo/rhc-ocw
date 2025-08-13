# syntax=docker/dockerfile:1
FROM alpine:3.22.1 AS log_watcher
WORKDIR /app
RUN apk --no-cache add tzdata docker=28.3.3-r0 docker-cli-compose=2.36.2-r0 curl=8.14.1-r1 jq=1.8.0-r0
COPY docker-compose.yaml ocw-minecraft/docker-compose.yaml
COPY --chmod=755 rhc/scripts/*.sh .
COPY *.env ocw-minecraft/
LABEL org.opencontainers.image.source="https://github.com/Nincodedo/rhc-ocw"
ENTRYPOINT ["/app/resetWorld.sh"]

FROM debian:stable-slim AS mc_build

RUN apt-get update \
  && apt-get install zip wget ca-certificates -y --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY datapacks /datapacks/
RUN cd /datapacks/who-did-this \
  && zip -r who-did-this.zip . \
  && mv who-did-this.zip /datapacks

FROM itzg/minecraft-server:2025.8.0 AS mc

ENV MODRINTH_PROJECTS=mc-server-description,rightclickharvest,vanilla-pings
ENV MODRINTH_DOWNLOAD_DEPENDENCIES=required

ENV DATAPACKS=/datapacks/who-did-this.zip
COPY --from=mc_build /datapacks/*.zip /datapacks/

ENV VANILLATWEAKS_FILE=/vt/craftingtweaks.json,/vt/datapacks.json
COPY rhc/vt/*.json /vt/

COPY rhc/patches/*.json /patches/
ENV PATCH_DEFINITIONS=/patches

ENV REPLACE_ENV_VARIABLES=true
ENV REPLACE_ENV_DURING_SYNC=true
ENV SYNC_SKIP_NEWER_IN_DESTINATION=false

LABEL org.opencontainers.image.source="https://github.com/Nincodedo/rhc-ocw"
