# Xteve docker container

* Exposed Ports: 34400
* Volumes: `/home/xteve/.xteve`, `/tmp/xteve`
* TODO: Health Check Script

## Create directories on host for xteve volumes
* `mkdir -p ~/xteve_home`
* `mkdir -p ~/xteve_tmp`

## Usage (for isolating the container)
* This will use the internal docker ip in the generated files
* Command : `docker run -it -d --name=xteve -p 127.0.0.1:34400:34400 -v ~/xteve_home:/root/.xteve -v ~/xteve_tmp:/tmp/xteve bl0m1/xtevedocker:latest`

## Usage (for running on host)
* This is no different than running the downloaded binary from `xteve.de`. All the generated files will point to 127.0.0.1
* Command : `docker run -it -d --name=xteve --network=host -v ~/xteve_home:/home/xteve/.xteve -v ~/xteve_tmp:/tmp/xteve bl0m1/xtevedocker:latest`

## Debugging
* This will drop you into a shell on the running container
* Command : `docker exec -it xteve sh`

