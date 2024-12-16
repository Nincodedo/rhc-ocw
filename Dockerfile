# syntax=docker/dockerfile:1
FROM alpine:3.20.3 AS log_watcher
WORKDIR /app
RUN apk --no-cache add tzdata docker=26.1.5-r0 docker-cli-compose=2.27.0-r3 curl=8.10.1-r0 jq=1.7.1-r0
COPY docker-compose.yaml ocw-minecraft/docker-compose.yaml
COPY --chmod=755 rhc/scripts/*.sh .
COPY *.env ocw-minecraft/
LABEL org.opencontainers.image.source="https://github.com/Nincodedo/rhc-ocw"
ENTRYPOINT ["/app/resetWorld.sh"]

FROM debian:stable-slim AS mc_build

ARG bedrock_bone_meal_version=1.2.2+1.21.3

RUN apt-get update \
  && apt-get install zip wget ca-certificates -y --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY datapacks /datapacks/
RUN cd /datapacks/who-did-this \
  && zip -r who-did-this.zip . \
  && mv who-did-this.zip /datapacks \
  && cd /datapacks/custom-compostables \
  && zip -r custom-compostables.zip . \
  && mv custom-compostables.zip /datapacks

RUN wget -O /datapacks/bedrock-bone-meal.zip https://github.com/Nincodedo/mc-java-bedrock-bone-meal-datapack/releases/download/$bedrock_bone_meal_version/bedrock-bone-meal-$bedrock_bone_meal_version.zip

FROM itzg/minecraft-server:2025.1.0 AS mc

ENV MODRINTH_PROJECTS=mc-server-description,rightclickharvest,vanilla-pings
ENV MODRINTH_DOWNLOAD_DEPENDENCIES=required

ENV DATAPACKS=/datapacks/who-did-this.zip,/datapacks/bedrock-bone-meal.zip,/datapacks/custom-compostables.zip
COPY --from=mc_build /datapacks/*.zip /datapacks/

ENV VANILLATWEAKS_FILE=/vt/craftingtweaks.json,/vt/datapacks.json
COPY rhc/vt/*.json /vt/

COPY rhc/patches/*.json /patches/
ENV PATCH_DEFINITIONS=/patches

ENV REPLACE_ENV_VARIABLES=true
ENV REPLACE_ENV_DURING_SYNC=true
ENV SYNC_SKIP_NEWER_IN_DESTINATION=false

LABEL org.opencontainers.image.source="https://github.com/Nincodedo/rhc-ocw"
