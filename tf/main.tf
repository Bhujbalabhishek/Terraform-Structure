module "database" {
  source           = "./modules/database"
  db               = var.db
}

module "user_grants" {
  source           = "./modules/user_grants"
  user             = var.user
  user_grants      = "[ALL PRIVILEGES]"
}