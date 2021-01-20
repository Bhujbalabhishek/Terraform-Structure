module "main" {
  source           = "../modules"
  db               = "prod_db"
  user             = "prod_user"
  user_grants      = "[ALL PRIVILEGES]"
  environment_name = "prod"
}
