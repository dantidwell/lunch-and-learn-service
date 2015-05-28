#!/bin/bash
pushd 'dist/debian'

PACKAGE_ROOT="./lunch-and-learn-api_${GO_PIPELINE_LABEL}"

mkdir $PACKAGE_ROOT
mkdir "$PACKAGE_ROOT/usr"
mkdir "$PACKAGE_ROOT/usr/bin"
mkdir "$PACKAGE_ROOT/usr/lib"
mkdir "$PACKAGE_ROOT/etc"
mkdir "$PACKAGE_ROOT/etc/init.d"

cp -a "./../../LunchAndLearn/LunchAndLearn.Api/bin/${GO_PIPELINE_LABEL}/." "${PACKAGE_ROOT}/usr/lib"
mkdir "$PACKAGE_ROOT/DEBIAN"
echo "Package: lunch-and-learn-api" >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Version: ${GO_PIPELINE_LABEL}" >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Section: base" >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Priority: optional" >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Architecture: amd64" >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Depends: " >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Maintainer: Dan Tidwell <dantidwell921@gmail.com>" >> "${PACKAGE_ROOT}/DEBIAN/control"
echo "Description: Lunch and Learn Web Service" >> "${PACKAGE_ROOT}/DEBIAN/control"

dpkg-deb --build "lunch-and-learn-api_${GO_PIPELINE_LABEL}"
popd
