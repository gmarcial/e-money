output "id" {
    value = digitalocean_droplet.droplet.id
    sensitive = true
}

output "ipv4_private" {
    value = digitalocean_droplet.droplet.ipv4_address_private
    sensitive = true
}