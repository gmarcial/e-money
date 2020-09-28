module "firewall" {
  source = "./modules/firewall"

  ip_admin = "ip"

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

  depends_on = [module.gateway, module.application, module.vault, module.application_database, module.vault_database]
}