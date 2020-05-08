# Important! - Breaking Changes in the latest release

* The volume for tmp files are removed, you need to remove this volume!
* The configuration volume are moved and now located in `/home/xteve/.xteve`
* All processes in the container are running as the user `xteve`

## Xteve 2 docker container

* Exposed Ports: 34400
* Volumes: `/home/xteve/.xteve`
* FFmpeg and VLC buffer support

## Create directories on host for xteve volumes

* `mkdir -p ~/xteve_home`

## Usage (for isolating the container, recommended)

* This will use the internal docker ip in the generated files

```bash
docker run -it -d \
--name=xteve \
-p 34400:34400 \
-v ~/xteve_home:/home/xteve/.xteve \
bl0m1/xtevedocker:latest
```

## Usage (for running on host)

```bash
docker run -it -d \
--name=xteve \
--network=host \
-v ~/xteve_home:/home/xteve/.xteve \
bl0m1/xtevedocker:latest
```

## Debugging

* This will drop you into a shell on the running container
* Command : `docker exec -it xteve sh`
