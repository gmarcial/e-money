module "firewall" {
  source = "./modules/firewall"

  gateway = {
    id = module.gateway.id
    ip = module.gateway.ipv4_private
  }

  application = {
    id = module.application.id
    ip = module.application.ipv4_private
  }

  vault = {
    id = module.vault.id
    ip = module.vault.ipv4_private
  }

  application_database = {
    id = module.application_database.id
    ip = module.application_database.ipv4_private
  }

  vault_database = {
    id = module.vault_database.id
    ip = module.vault_database.ipv4_private
  }

  depends_on = [module.gateway, module.application, module.vault, module.application_database, module.vault_database]
}