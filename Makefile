build:
	docker build -t mikemoran/osrm-service-run:latest read
	docker build -t mikemoran/osrm-service-build:latest write
	docker images | grep osrm-service

push:
	docker push mikemoran/osrm-service-run
	docker push mikemoran/osrm-service-build
