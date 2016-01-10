build:
	docker build -t mikemoran/osrm-service-run:latest read
	docker build -t mikemoran/osrm-service-build:latest write
	docker images | grep osrm-service
