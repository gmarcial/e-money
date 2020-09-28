# Ansible

Aqui é encontrado a declaração da configuração da infraestrutura necessária para o projeto, utilizando ansible, uma ferramenta com o conceito de infraestrutura como codigo.

Saiba mais no site oficial do [ansible](https://www.ansible.com/).

Atualmente a provedora cloud utilizada é a [digital ocean](https://www.digitalocean.com/), onde os recursos utilizados foram quebrados em [roles](./roles) ansible:

- [Common](./roles/common)
- [Databases](./roles/databases)
- [Docker Module](./roles/docker-module)
- [Gateway](./roles/gateway)
- [Vault](./roles/vault)
- [Vault Database](./roles/vault-database)