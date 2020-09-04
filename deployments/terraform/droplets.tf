module "gateway" {
  source = "./modules/droplet"

  name = "gateway"
  vpc_uuid = module.vpc.uuid
  key_id = data.digitalocean_ssh_key.terraform.id

  depends_on = [module.vpc]
}

module "application" {
  source = "./modules/droplet"

  name = "application"
  vpc_uuid = module.vpc.uuid
  key_id = data.digitalocean_ssh_key.terraform.id

  depends_on = [module.vpc]
}

module "vault" {
  source = "./modules/droplet"

  name = "vault"
  vpc_uuid = module.vpc.uuid
  key_id = data.digitalocean_ssh_key.terraform.id

  depends_on = [module.vpc]
}

module "application_database" {
  source = "./modules/droplet"

  name = "application-database"
  vpc_uuid = module.vpc.uuid
  key_id = data.digitalocean_ssh_key.terraform.id

  depends_on = [module.vpc]
}

module "vault_database" {
  source = "./modules/droplet"

  name = "vault-database"
  vpc_uuid = module.vpc.uuid
  key_id = data.digitalocean_ssh_key.terraform.id

  depends_on = [module.vpc]
}