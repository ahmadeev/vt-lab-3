#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

sudo install -D -m 644 ./03-nginx/index.html /home/www/html/index.html

docker build -t nginx-akhmadeev ./03-nginx
docker run --rm -p 8080:8080 \
  -v /home/www/html:/home/www/html:ro \
  nginx-akhmadeev
