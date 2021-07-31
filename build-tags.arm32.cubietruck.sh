#!/bin/bash

# $ chmod +x build-tags.arm32.cubietruck.sh
# $ ./build-tags.arm32.cubietruck.sh

set -e

echo "Start"

#:armhf
docker build -f Dockerfile.arm32.buster -t devdotnetorg/dotnet-gpioset:armhf .
docker push devdotnetorg/dotnet-gpioset:armhf

echo "END"
