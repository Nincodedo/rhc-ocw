#!/bin/sh

gameVersion=1.18

craftingPackResponse=`curl -k --request POST \
  --url https://vanillatweaks.net/assets/server/zipcraftingtweaks.php \
  --header 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
  --data 'packs={"quality of life":["sandstone dyeing","universal dyeing"],"unpackables":["unpackable ice","unpackable nether wart","unpackable wool"], "craftables":["craftable bundles rabbit hide"]}' \
  --data version=$gameVersion`

craftingPackDownloadUrl=https://vanillatweaks.net`echo $craftingPackResponse | jq -r '.["link"]'`

wget -O $1/VanillaTweaksCrafting.zip $craftingPackDownloadUrl

dataPackResponse=`curl -k --request POST \
  --url https://vanillatweaks.net/assets/server/zipdatapacks.php \
  --header 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' \
  --data 'packs={"survival":["fast leaf decay"]}' \
  --data version=$gameVersion`

dataPackDownloadUrl=https://vanillatweaks.net`echo $dataPackResponse | jq -r '.["link"]'`

wget -O $1/VanillaTweaksData.zip $dataPackDownloadUrl

unzip $1/VanillaTweaksData.zip -d $1
mv $1/fast* $1/fastleafdecay.zip
if [ ! -f "$1/fastleafdecay.zip" ]
then
  exit 1
fi
rm $1/VanillaTweaksData.zip
