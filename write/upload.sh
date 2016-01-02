#!/bin/bash
REGION=us-west-1

LATEST=$(cat $NAME/latest)
PACKAGE=$LATEST.tar.bz2

echo "Uploading $NAME package $PACKAGE to s3"
aws s3 cp --region us-west-1 $NAME/$PACKAGE s3://osrm-service.houseofmoran.com/data/$NAME/$PACKAGE
aws s3 cp --region us-west-1 $NAME/latest s3://osrm-service.houseofmoran.com/data/$NAME/latest
echo "done"
