#!/usr/bin/env bash

set -ev

SCRIPT_DIR=$(dirname "$0")

CODE_DIR=$(cd $SCRIPT_DIR/..; pwd)
echo $CODE_DIR

cp -r $CODE_DIR/cmd/ $CODE_DIR/docker/payment/cmd/
cp $CODE_DIR/*.go $CODE_DIR/docker/payment/
mkdir $CODE_DIR/docker/payment/vendor && cp $CODE_DIR/vendor/manifest $CODE_DIR/docker/payment/vendor/

# docker build -t jbraeuer/payment:latest -f $CODE_DIR/docker/payment/Dockerfile $CODE_DIR/docker/payment;

# docker push jbraeuer/payment:latest