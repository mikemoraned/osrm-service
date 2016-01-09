#!/bin/sh
BASE=/data
DATA_DIR=$BASE/$NAME

echo "Starting server for $NAME"
LATEST=$(cat $DATA_DIR/latest)

OSRM_BASE=$DATA_DIR/$LATEST/area.osrm
echo "Using $OSRM_BASE"
./osrm-routed $OSRM_BASE --max-table-size 8000 &
child=$!

echo "Started"
wait "$child"
