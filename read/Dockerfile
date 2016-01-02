FROM acroca/osrm-docker:latest

RUN apt-get update && apt-get install -y python-pip
RUN pip install awscli

WORKDIR /build
ADD fetch.sh fetch.sh
ADD server.sh server.sh
ADD run.sh run.sh

ENV AWS_ACCESS_KEY_ID="" AWS_SECRET_ACCESS_KEY=""

ENV NAME=barcelona_spain

EXPOSE 5000

ENTRYPOINT ["./run.sh"]
