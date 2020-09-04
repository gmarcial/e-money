terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

resource "digitalocean_firewall" "firewall" {
  name = "emoney-firewall"

  inbound_rule {
    protocol           = "tcp"
    port_range         = "443"
    source_droplet_ids = [var.application.id]
    source_addresses   = [var.gateway.ip]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "22"
    source_droplet_ids = [var.application.id]
    source_addresses   = [var.gateway.ip]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "5432"
    source_droplet_ids = [var.application_database.id]
    source_addresses   = [var.application.ip]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "5432"
    source_droplet_ids = [var.vault_database.id]
    source_addresses   = [var.vault.ip]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "8200"
    source_droplet_ids = [var.vault.id]
    source_addresses   = [var.application.ip]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "443"
    source_droplet_ids = [var.gateway.id]
    source_addresses   = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol           = "tcp"
    port_range         = "22"
    source_droplet_ids = [var.gateway.id]
    source_addresses   = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_droplet_ids    = [var.gateway.id, var.application.id, var.vault.id, var.application_database.id, var.vault_database.id]
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range = "1-65535"
    destination_droplet_ids    = [var.gateway.id, var.application.id, var.vault.id, var.application_database.id, var.vault_database.id]
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range = "1-65535"
    destination_droplet_ids    = [var.gateway.id, var.application.id, var.vault.id, var.application_database.id, var.vault_database.id]
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
