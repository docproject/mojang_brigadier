#! /bin/bash

set -e

echo "Pulling in sources"
git clone https://github.com/Mojang/brigadier
cd brigadier

echo "Building javadoc"
./gradlew javadoc --console=plain

echo "Done."