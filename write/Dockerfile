FROM acroca/osrm-docker:latest

RUN apt-get update && apt-get install -y python-pip
RUN pip install awscli

WORKDIR /build
ADD build.sh build.sh
ADD upload.sh upload.sh
ADD run.sh run.sh

ENV AWS_ACCESS_KEY_ID=""
ENV AWS_SECRET_ACCESS_KEY=""

ENTRYPOINT ["./run.sh"]
