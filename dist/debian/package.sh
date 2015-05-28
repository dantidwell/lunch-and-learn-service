#!/bin/bash

PACKAGE_ROOT='lunch-and-learn-api_$GO_PIPELINE_COUNTER'

mkdir $PACKAGE_ROOT
mkdir $PACKAGE_ROOT/usr
mkdir $PACKAGE_ROOT/usr/bin
mkdir $PACKAGE_ROOT/usr/lib
mkdir $PACKAGE_ROOT/etc
mkdir $PACKAGE_ROOT/etc/init.d

cp "../LunchAndLearn/LunchAndLearn.Api/bin/$CONFIGURATION/.*' '$PACKAGE_ROOT/usr/lib'


