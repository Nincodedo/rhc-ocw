#!/bin/sh

packResponse=`curl --request POST \
  --url https://vanillatweaks.net/assets/server/zipcraftingtweaks.php \
  --header 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
  --data 'packs={"quality of life":["sandstone dyeing","universal dyeing"],"unpackables":["unpackable ice","unpackable nether wart","unpackable wool"]}' \
  --data version=1.16`

packDownloadUrl=https://vanillatweaks.net`echo $packResponse | jq '.["link"]' | sed -e 's/^"//' -e 's/"$//'`

wget -P $1 -O VanillaTweaks.zip $packDownloadUrl
