### Important! - Breaking Changes in the latest release

* The volume for tmp files are removed, you need to remove this volume!
* The configuration volume are moved and now located in `/home/xteve/.xteve`
* All processes in the container are running as the user `xteve`
- If you wish to run a version witout the changes above you can use the tag `release-2.0.0.0001`

# Xteve 2 docker container

* Exposed Ports: 34400
* Volumes: `/home/xteve/.xteve`
* FFmpeg and VLC buffer support

## Create directories on host for xteve volumes

* `mkdir -p ~/xteve_home`

## Usage (for isolating the container, recommended)

* This will use the internal docker ip in the generated files
* Command : `docker run -it -d --name=xteve -p 34400:34400 -v ~/xteve_home:/home/xteve/.xteve bl0m1/xtevedocker:latest`

## Usage (for running on host)

* This is no different than running the downloaded binary from `xteve.de`. All the generated files will point to 127.0.0.1
* Command : `docker run -it -d --name=xteve --network=host -v ~/xteve_home:/home/xteve/.xteve bl0m1/xtevedocker:latest`

## Debugging

* This will drop you into a shell on the running container
* Command : `docker exec -it xteve sh`
