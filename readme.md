# How to enable Slow Query Logging on MariaDB

## Prerequisites
- [Docker Engine](https://docs.docker.com/engine/install/) or [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed

## How to use
1. Clone this repository
2. Run `docker-compose up -d`
3. Monitor the container initialization by running `docker logs -f mariadb_slow_query`
4. Wait until it says `Finished initializing the container`
5. Once finished, get inside the container by running `docker exec -it mariadb_slow_query /bin/bash`
6. Run all the commands and queries explained in the article from inside the container

For more details, follow this [article](https://dev.to/budiantoip/how-to-enable-slow-query-logging-on-mariadb-20k5).