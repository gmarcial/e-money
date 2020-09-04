terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "token" {}

provider "digitalocean" {
  token = var.token
}

data "digitalocean_ssh_key" "terraform" {
  name = "terraform"
}
