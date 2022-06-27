#!/bin/sh

cd /app/src || { echo "Missing directory /app/src"; exit 1; }

echo Build the frontend application
npm run build

# The following step permits to reduce service unavailability while
# the frontend is being built.
echo Copy frontend files to volume shared with the reverse proxy
/usr/bin/rsync -av /app/src/build/ /build
