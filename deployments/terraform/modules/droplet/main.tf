terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

resource "digitalocean_droplet" "droplet" {
    image = var.image
    name = var.name
    region = var.region
    size = var.size
    monitoring = var.monitoring
    vpc_uuid = var.vpc_uuid
    ssh_keys = [var.key_id]
}