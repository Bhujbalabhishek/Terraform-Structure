module "main" {
  source           = "../modules"
  db               = "stg_db"
  user             = "stg_user"
  user_grants      = "[ALL PRIVILEGES]"
  environment_name = "stg"
}
