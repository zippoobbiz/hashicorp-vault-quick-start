backend "consul" {
  address = "consul:8500"
  path = "vault/localhost"
  scheme = "http"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

ui = true
api_addr = "http://0.0.0.0:8200"
cluster_addr = "https://0.0.0.0:8201"
