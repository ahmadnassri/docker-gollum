# Gollum Wiki Container

a Gollum Wiki container for local runs.

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![super linter][super-linter-img]][super-linter-url]
[![semantic][semantic-img]][semantic-url]
[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

## Usage

create a `docker-compose.yml` with the following:

``` yaml
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
> 
> Map the the directory where Gollum will read files to `/wiki`

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-github-pages

[release-url]: https://github.com/ahmadnassri/docker-github-pages/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-github-pages

[super-linter-url]: https://github.com/ahmadnassri/docker-github-pages/actions?query=workflow%3Asuper-linter
[super-linter-img]: https://github.com/ahmadnassri/docker-github-pages/workflows/super-linter/badge.svg

[semantic-url]: https://github.com/ahmadnassri/docker-github-pages/actions?query=workflow%3Arelease
[semantic-img]: https://badgen.net/badge/📦/semantically%20released/blue

[size-url]: https://hub.docker.com/r/ahmadnassri/gollum
[size-img]: https://badgen.net/docker/size/ahmadnassri/gollum

[docker-url]: https://hub.docker.com/r/ahmadnassri/gollum
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/docker-gollum
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
