#!/bin/bash
BASE=/data
DATA_DIR=$BASE/$NAME
echo "Building into $DATA_DIR"

echo "Fetching $URL"

mkdir -p $DATA_DIR
cd $DATA_DIR
curl $URL > area.osm.pbf

echo "Processing $NAME using $STXXL_SIZE for .stxxl"
echo "disk=$BASE/stxxl,$STXXL_SIZE,syscall" > .stxxl
/build/osrm-extract -p /build/profile.lua area.osm.pbf
/build/osrm-prepare -p /build/profile.lua area.osrm

VERSION=$(md5sum area.osm.pbf | cut -f1 -d' ')
echo "Packaging $NAME, version $VERSION"
mkdir $VERSION
mv area.osrm* $VERSION
tar -jcvf $VERSION.tar.bz2 $VERSION

echo "$VERSION" > latest
echo "done"
