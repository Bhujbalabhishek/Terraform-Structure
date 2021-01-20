module "database" {
  source = "../modules/stg_db"
}

module "user_grants" {
  source = "../modules/user_grants_stg"
}