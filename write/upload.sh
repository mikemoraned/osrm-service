#!/bin/bash
REGION=us-west-1

LATEST=$(cat $NAME/latest)

echo "Uploading $NAME package $LATEST to s3"
aws s3 cp --region us-west-1 $NAME/$LATEST s3://osrm-service.houseofmoran.com/data/$NAME/$LATEST
aws s3 cp --region us-west-1 $NAME/latest s3://osrm-service.houseofmoran.com/data/$NAME/latest
echo "done"
