#!/bin/bash

cd /app/src || { echo "Missing directory /app/src"; exit 1; }

python manage.py collectstatic --no-input
python manage.py migrate --no-input

echo Starting django...
gunicorn -c /app/conf/gunicorn.py