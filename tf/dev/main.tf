module "database" {
  source           = "../modules/database"
  db               = "dev_db"
  environment_name  = "dev"
}

module "user_grants" {
  source           = "../modules/user_grants"
  user             = "dev_user"
  user_grants      = "[ALL PRIVILEGES]"
}