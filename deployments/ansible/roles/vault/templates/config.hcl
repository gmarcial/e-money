storage "postgresql" {
    connection_url = {{ connection_string }}
}

listener "tcp" {
  address = "{{ vault_ip }}:8200"
  http_read_header_timeout = "10s"
  http_read_timeout = "30s"
  http_write_timeout = "60s"
  tls_disable = true
}