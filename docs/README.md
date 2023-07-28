## Usage

create a `docker-compose.yml` with the following:

```yaml
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
