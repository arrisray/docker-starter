#!/bin/bash
CONTAINER_ID=$(docker ps -aqf "ancestor=sample-container-name")
docker exec -it $CONTAINER_ID /bin/bash
