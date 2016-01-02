FROM acroca/osrm-docker:latest

RUN apt-get update && apt-get install -y python-pip
RUN pip install awscli

WORKDIR /build
ADD build.sh build.sh
ADD upload.sh upload.sh
ADD run.sh run.sh

ENV AWS_ACCESS_KEY_ID="" AWS_SECRET_ACCESS_KEY=""

ENV NAME=barcelona_spain URL=https://s3.amazonaws.com/metro-extracts.mapzen.com/barcelona_spain.osm.pbf

ENTRYPOINT ["./run.sh"]
