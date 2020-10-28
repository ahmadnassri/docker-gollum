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
