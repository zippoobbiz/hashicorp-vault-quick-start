# Hashicorp vault quick start

## start vault dev mode in memory
```bash
vault server -dev
```

## file-backend

### start vault

```bash
cd file-backend
vault server -config=vault-config.hcl
```

### vault setup

```bash
export VAULT_ADDR=http://localhost:8200
export VAULT_SKIP_VERIFY=true
vault operator init
vault operator unseal <shamir-key-1>
vault operator unseal <shamir-key-2>
vault operator unseal <shamir-key-3>
vault login <token>
vault status
```


## consul-backend / consul-backend-HA

This is an example of hosting vault in docker and store the secrets in consul, in the HA folder, you can add additional consul standbys to the cluster.

### start the service

It will create contianers for vault and consul respectively using the official Hashicorp docker image. The version is set to 1.5.0 for Vault and 1.8.2 for Consul for compatibility purpose.

Since we are using the official image, please check the docker image built code and the docs at
- https://hub.docker.com/_/vault
- https://github.com/hashicorp/docker-vault
- https://hub.docker.com/_/consul
- https://github.com/hashicorp/docker-consul

Some of the logic is hidden inside the start up script in docker-entrypoint.sh, necessary ENV Vars are required to make it work properly.

### spin up the service

```bash
cd consul-backend
docker-compose up -d

```

### vault setup

```bash
export VAULT_ADDR=http://localhost:8200
export VAULT_SKIP_VERIFY=true
vault operator init
vault operator unseal <shamir-key-1>
vault operator unseal <shamir-key-2>
vault operator unseal <shamir-key-3>
vault login <token>
```

### vault related operations
```bash
vault status
...
...
```

### tear down the services

```bash
docker-compose down
```


## install vault in existing kubernetes cluster
```bash
helm repo add hashicorp https://helm.releases.hashicorp.com
helm install consul hashicorp/consul --values helm-consul-values.yml
helm install vault hashicorp/vault --values helm-vault-values.yml
```