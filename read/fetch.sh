#!/bin/bash

BASE=/data
DATA_DIR=$BASE/$NAME

REGION=us-west-1

echo "Finding latest for $NAME, saving in $DATA_DIR"
mkdir -p $DATA_DIR
aws s3 cp --region $REGION s3://osrm-service.houseofmoran.com/data/$NAME/latest $DATA_DIR/latest
LATEST=$(cat $DATA_DIR/latest)

PACKAGE=$LATEST.tar.bz2
echo "Downloading $PACKAGE to $DATA_DIR/$PACKAGE"
aws s3 cp --region $REGION s3://osrm-service.houseofmoran.com/data/$NAME/$PACKAGE $DATA_DIR/$PACKAGE

echo "Extracting $PACKAGE into $DATA_DIR"
cd $DATA_DIR
tar jxvf $PACKAGE

echo "done"
