variable "image" {
    type = string
    default = "docker-20-04"
}

variable "name" {
    type = string
}

variable "region" {
    type = string
    default = "nyc1"
}

variable "size" {
    type = string
    default = "s-1vcpu-1gb"
}

variable "monitoring" {
    type = bool
    default = "true"
}

variable "vpc_uuid" {
    type = string
}

variable "key_id" {
    type = number
}