# Docker Airconnect for ARM

This is a dockerized version of [AirConnect](https://github.com/philippe44/AirConnect) which bridges AirPlay with Sonos and the Google Cast protocol.

## How to launch

- `docker run -d --net="host" jcxarm/airconnect:latest`


Or via docker-compose: (in `docker-compose.yml`)

```yml
version: "3.3"

services:
  airconnect:
    restart: always
    image: jcxarm/airconnect:latest
    network_mode: host
```
