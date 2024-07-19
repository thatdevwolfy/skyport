mkdir -p /tmp/skyport

mv  -r * /tmp/skyport
git pull
mv /tmp/skyport/skyport.db .
mv /tmp/skyport/config.json .
