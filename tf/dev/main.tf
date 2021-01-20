module "database" {
  source = "../modules/dev_db"
}

module "user_grants" {
  source = "../modules/user_grants_dev"
}