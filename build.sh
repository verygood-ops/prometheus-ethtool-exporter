#!/bin/sh

set -eu -o pipefail

mkdir -p tmp

cp app/ethtool-exporter.py tmp/ethtool-exporter.py
python3 -m pip download --no-binary :all: -r requirements.txt --require-hashes -d tmp

docker build -t ethtool-exporter .
