output "uuid" {
    value = digitalocean_vpc.vpc.id
    sensitive = true
}