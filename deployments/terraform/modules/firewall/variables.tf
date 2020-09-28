//TODO: This looks strange to me, in the future, learn how bettering.

variable "ip_admin" {
    type = string
}

variable "gateway" {
  type = object({
    id = number
    ip = string
  })
}

variable "application" {
  type = object({
    id = number
    ip = string
  })
}

variable "vault" {
  type = object({
    id = number
    ip = string
  })
}