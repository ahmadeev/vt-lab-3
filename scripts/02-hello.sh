#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

docker build -t hello-akhmadeev ./02-hello
docker run --rm hello-akhmadeev
