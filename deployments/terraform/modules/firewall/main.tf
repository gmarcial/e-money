terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}
resource "digitalocean_firewall" "default_inbound" {
  name = "default-inbound"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "22"
    source_droplet_ids = [var.gateway.id]
    source_addresses = [var.ip_admin]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "1-65535"
    source_droplet_ids = [var.gateway.id]
  }

  inbound_rule {
    protocol           = "udp"
    port_range         = "1-65535"
    source_droplet_ids = [var.gateway.id]
  }
}

resource "digitalocean_firewall" "default_outbound" {
  name = "default-outbound"

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}

resource "digitalocean_firewall" "gateway_firewall" {
  name = "gateway-rules"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "22"
    source_addresses = [var.ip_admin]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol           = "udp"
    port_range         = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
}

resource "digitalocean_firewall" "application_firewall" {
  name = "application-rules"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "443"
    source_droplet_ids = [var.gateway.id]
  }
}

resource "digitalocean_firewall" "vault_firewall" {
  name = "vault-rules"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "8200"
    source_droplet_ids = [var.application.id]
  }
}

resource "digitalocean_firewall" "application_database_firewall" {
  name = "application-database-rules"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "5432"
    source_droplet_ids = [var.application.id]
  }
}

resource "digitalocean_firewall" "vault_database_firewall" {
  name = "vault-database-rules"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "5432"
    source_droplet_ids = [var.vault.id]
  }
}
