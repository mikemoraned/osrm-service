#!/bin/bash
REGION=us-west-1

BASE=/data
DATA_DIR=$BASE/$NAME

LATEST=$(cat $DATA_DIR/latest)
PACKAGE=$LATEST.tar.bz2

echo "Uploading $NAME package $PACKAGE to s3"
aws s3 cp --region us-west-1 $DATA_DIR/$PACKAGE s3://osrm-service.houseofmoran.com/data/$NAME/$PACKAGE
aws s3 cp --region us-west-1 $DATA_DIR/latest s3://osrm-service.houseofmoran.com/data/$NAME/latest
echo "done"
