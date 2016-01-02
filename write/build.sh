#!/bin/bash
echo "Fetching $NAME from $URL"
mkdir $NAME
cd $NAME
curl $URL > area.osm.pbf

echo "Processing $NAME"
/build/osrm-extract -p /build/profile.lua area.osm.pbf
/build/osrm-prepare -p /build/profile.lua area.osrm

VERSION=$(md5sum area.osm.pbf | cut -f1 -d' ')
echo "Packaging $NAME, version $VERSION"
mkdir $VERSION
mv area.osrm* $VERSION
tar -jcvf $VERSION.tar.bz2 $VERSION

echo "$VERSION" > latest
echo "done"
