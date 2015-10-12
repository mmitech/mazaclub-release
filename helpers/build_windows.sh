#!/bin/bash
set -xeo pipefail
source build-config.sh
source helpers/build-common.sh
cp build-config.sh helpers
check_vars
$DOCKERBIN run --rm -it --privileged -e MKPKG_VER=${VERSION} -v $(pwd)/helpers:/root  -v $(pwd)/repo:/root/repo  -v $(pwd)/source:/opt/wine-electrum/drive_c/electrum-grs/ -v $(pwd):/root/electrum-grs-release mazaclub/electrum-grs-winbuild:${VERSION} /root/build-binary $VERSION 
