#!/usr/bin/env bash
version=$(curl -s https://api.github.com/repos/sass/dart-sass/releases/latest | jq -r '.tag_name')
readonly version
echo "building dart-sass for version $version"
docker buildx build \
    --platform linux/arm,linux/arm64,linux/amd64 \
    --build-arg VERSION="$version" \
    --tag hidespb/dart-sass:"$version"-alpine \
    --tag hidespb/dart-sass:alpine \
    --push \
    .
