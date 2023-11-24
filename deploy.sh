#!/bin/sh

DOCKER_IMAGE=madmanfred/qt-webassembly:qt5.15-em1.39.10-remoteobjects

DOCKER_COMMAND="docker run --rm -v cache:/emsdk_portable/.data/cache:z -v $PWD:/src:z -u $(id -u):$(id -g) $DOCKER_IMAGE"

# Build
mkdir -p build
$DOCKER_COMMAND qmake -o /src/build CONFIG+=release
$DOCKER_COMMAND make -C /src/build

# Remove intermediary files
rm -rf build/{moc,objects,*.cpp}
