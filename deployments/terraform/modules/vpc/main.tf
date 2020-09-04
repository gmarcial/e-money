terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}


resource "digitalocean_vpc" "vpc" {
    name = var.name
    region = var.region
}