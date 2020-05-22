# Gollum Wiki Container

a [Gollum Wiki](https://github.com/gollum/) container for local runs.

## Flavors

The image is published to two registries:

- [Docker Hub](https://hub.docker.com/r/ahmadnassri/gollum)
- [GitHub Package Registry](https://github.com/ahmadnassri/docker-gollum/packages)

## Usage

create a `docker-compose.yml` with the following:

```yaml
version: '3'

services:
  gollum:
    image: ahmadnassri/gollum
    volumes:
      - $PWD:/wiki
    ports:
      - 8080:8080
```

> #### Volumes
> Map the the directory where Gollum will read files to `/wiki`

> #### Image
> For GitHub Package Registry, use `image: docker.pkg.github.com/ahmadnassri/docker-gollum/docker-gollum`
