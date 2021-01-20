module "database" {
  source           = "../modules/database"
  db               = "prod_db"
  environment_name  = "prod"
}

module "user_grants" {
  source           = "../modules/user_grants"
  user             = "prod_user"
  user_grants      = "[ALL PRIVILEGES]"
}