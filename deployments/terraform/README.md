# Terraform

Aqui é encontrado a declaração da  infraestrutura necessária para o projeto, utilizando terraform, uma ferramenta com o conceito de infraestrutura como codigo.

Saiba mais no site oficial do [terraform](https://www.terraform.io/).

Atualmente a provedora cloud utilizada é a [digital ocean](https://www.digitalocean.com/), onde os recursos utilizados foram quebrados em [módulos](./modules) terraform:

- [VPC](./modules/vpc)
- [Firewall](./modules/firewall)
- [Droplet](./modules/droplet)