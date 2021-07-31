#!/bin/bash

# $ chmod +x buildx-tags.arm32.sh
# $ ./buildx-tags.arm32.sh

set -e

echo "Start"

#:armhf
docker buildx build --platform linux/arm -f Dockerfile.arm32.buster -t devdotnetorg/dotnet-gpioset:armhf . --load

echo "END"

#docker build -f Dockerfile.arm32.buster -t devdotnetorg/dotnet-gpioset:armhf .
#docker push devdotnetorg/dotnet-gpioset:armhf