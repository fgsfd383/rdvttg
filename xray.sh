#!/bin/sh
if [ ! -f UUID ]; then
  UUID="dbcd8ff1-f5fa-4303-a935-2f24cc1f54e9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

