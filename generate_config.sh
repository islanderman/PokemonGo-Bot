#!/usr/bin/env bash

echo "username in config (not login): "
read name

cp ./configs/config.json.pokemon.example ./configs/$name.json

echo "your Google account: "
read google

echo "your password (or app password):"
read passwd

echo "your location: "
read location

echo "your google map API key:"
read api_key

sed -i '' -e "s/YOUR_USERNAME/$google/" ./configs/$name.json
sed -i '' -e "s/YOUR_PASSWORD/$passwd/" ./configs/$name.json
sed -i '' -e "s/SOME_LOCATION/$location/" ./configs/$name.json
sed -i '' -e "s/GOOGLE_MAPS_API_KEY/$api_key/" ./configs/$name.json

cp ./all.sh.template ./all.sh
chmod +x ./all.sh

sed -i '' -e "s/USER_NAME_TEMPLATE/$name/" ./all.sh

