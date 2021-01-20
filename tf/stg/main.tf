module "database" {
  source           = "../modules/database"
  db               = "stg_db"
  environment_name  = "stg"
}

module "user_grants" {
  source           = "../modules/user_grants"
  user             = "stg_user"
  user_grants      = "[ALL PRIVILEGES]"
}