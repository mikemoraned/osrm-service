#!/bin/sh
echo "Starting server for $NAME"
LATEST=$(cat $NAME/latest)

OSRM_BASE=$NAME/$LATEST/area.osrm
echo "Using $OSRM_BASE"
./osrm-routed $OSRM_BASE --max-table-size 8000 &
child=$!

echo "Started"
wait "$child"
