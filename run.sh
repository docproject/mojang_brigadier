#! /bin/bash

set -e

echo "Building docker container"
docker build -t docproject_mojang_brigadier_build .

echo "Building docs"
mkdir -p gen
docker run -v "$PWD"/gen:/source/brigadier docproject_mojang_brigadier_build bash /source/build.sh