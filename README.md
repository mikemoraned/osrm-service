# osrm-service

It can take a while to extract and prepare the routes needed by osrm, so this builds
two Docker images, one for building the osrm files, and one for using them. The builds
are stored in s3.

# credits
This re-uses all the good docker work of https://github.com/acroca/osrm-docker
(associated image: https://hub.docker.com/r/acroca/osrm-docker/) as well as of course
http://map.project-osrm.org/ and the wonderful data from http://www.openstreetmap.org/.
