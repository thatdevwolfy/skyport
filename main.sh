mkdir -p /tmp/skyport

find . -maxdepth 1 ! -path "./tmp" ! -path "." ! -name "$(basename "$0")" -exec mv -t /tmp/skyport {} +

git pull

mv /tmp/skyport/skyport.db .
mv /tmp/skyport/config.json .
