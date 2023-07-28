# Gollum Wiki Container

a Gollum Wiki container for local runs.

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

## Usage

create a `docker-compose.yml` with the following:

``` yaml
version: 3

services:
  gollum:
    image: ahmadnassri/gollum
    volumes:
      - $PWD:/wiki
    ports:
      - 80:4567
```

> #### Volumes
>
> Map the the directory where Gollum will read files to `/wiki`

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-gollum

[release-url]: https://github.com/ahmadnassri/docker-gollum/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-gollum

[size-url]: https://hub.docker.com/r/ahmadnassri/gollum
[size-img]: https://badgen.net/docker/size/ahmadnassri/gollum?label=image%20size

[docker-url]: https://hub.docker.com/r/ahmadnassri/gollum
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/gollum
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
