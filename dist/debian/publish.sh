#!/bin/bash

PACKAGE_NAME="lunch-and-learn-api"
PACKAGE_FILE="${PACKAGE_NAME}_${GO_PIPELINE_LABEL}.deb"

curl -H "X-Bintray-Debian-Distribution: wheezy" -H "X-Bintray-Debian-Component: main" -H "X-Bintray-Debian-Architecture: amd64" -X PUT -T $PACKAGE_FILE -udantidwell:$BINTRAY_API_KEY https://api.bintray.com/content/dantidwell/deb/$PACKAGE_NAME/$GO_PIPELINE_LABEL/$PACKAGE_FILE

curl -X POST -udantidwell:$BINTRAY_API_KEY https://api.bintray.com/content/dantidwell/deb/$PACKAGE_NAME/$GO_PIPELINE_LABEL/publish
