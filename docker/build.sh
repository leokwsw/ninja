#!/bin/bash

: ${tag=latest}

cd docker
docker buildx build --platform linux/amd64,linux/arm64/v8,linux/arm/v7,linux/arm/v6 \
    --tag ghcr.io/leokwsw/ninja:$tag \
    --tag ghcr.io/leokwsw/ninja:latest \
    --tag leokwsw/ninja:$tag \
    --tag leokwsw/ninja:latest \
    --build-arg VERSION=$tag --push .
cd -
