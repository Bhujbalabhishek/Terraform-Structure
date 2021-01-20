module "main" {
  source           = "../modules"
  db               = "dev_db"
  user             = "dev_user"
  user_grants      = "[ALL PRIVILEGES]"
  environment_name = "dev"
}
