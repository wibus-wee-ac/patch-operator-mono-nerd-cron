#!/bin/env bash
set -e

docker pull nerdfonts/patcher
docker run --rm -v ./lig:/in -v ./out:/out nerdfonts/patcher -c

zip -r out release.zip
