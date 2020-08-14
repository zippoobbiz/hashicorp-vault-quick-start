// acl {
//   enabled = true
//   default_policy = "deny"
//   down_policy = "async-cache"
//   tokens {
//     master = "{{ consul_master_token | replace('\r', '') }}"
//     agent = "{{ consul_master_token | replace('\r', '') }}"
//   }
// }
bootstrap_expect = 1


// client_addr = "{{ansible_eth0.ipv6[0].address}} ::1"
// bind_addr = "{{ansible_eth0.ipv6[0].address}}"

// disable_host_node_id = true
// disable_update_check = true
// encrypt = "{{ consul_encrypt_key | replace('\r', '') }}"

// ports = {
//   http = -1
//   https = 8501
// }
// leave_on_terminate = false
// protocol = 3
// raft_protocol = 3
// rejoin_after_leave = true
// retry_join = [
// {% set comma = joiner(",") %}
// {% for server in consul_cluster_servers %}
//   {{ comma() }}"{{ server }}"
// {% endfor %}
// ]
datacenter = "localhost"
data_dir = "/consul/data"
log_level = "INFO"
server = true
ui = true
// ports = {
//   dns = 53
// }