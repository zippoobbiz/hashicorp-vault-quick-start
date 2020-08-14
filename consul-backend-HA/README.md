
## CONSUL
Since we are using the official image from hashicorp, please check the docker image built code and the docs at
https://hub.docker.com/_/consul
https://github.com/hashicorp/docker-consul
some of the logic is hidden inside the start up script in docker-entrypoint.sh

## spin up the containers

```bash
docker-compose up -d
```

## tear down the containers

```bash
docker-compose down
```
