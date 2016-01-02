#!/bin/bash
REGION=us-west-1

echo "Finding latest for $NAME"
mkdir $NAME
aws s3 cp --region us-west-1 s3://osrm-service.houseofmoran.com/data/$NAME/latest $NAME/latest
LATEST=$(cat $NAME/latest)

PACKAGE=$LATEST.tar.bz2
echo "Downloading $PACKAGE"
aws s3 cp --region us-west-1 s3://osrm-service.houseofmoran.com/data/$NAME/$PACKAGE $NAME/$PACKAGE

echo "Extracting $PACKAGE into $NAME"
cd $NAME
tar jxvf $PACKAGE

echo "done"
