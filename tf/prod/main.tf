module "database" {
  source = "../modules/database"
}

module "user_grants" {
  source = "../modules/user_grants"
}