#!/bin/bash

# $ chmod +x buildx-tags.arm32.sh
# $ ./buildx-tags.arm32.sh

set -e

echo "Start"

docker build -f Dockerfile.alpine -t devdotnetorg/dotnet-gpioset:armhf .
docker push devdotnetorg/dotnet-gpioset:armhf

echo "END"