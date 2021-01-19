
module "provider"{
    source = "../modules/database"
}


resource "docker_container" "db2" {
  name  = "db2"
  image = "mysql:latest"
  env = [
    "MYSQL_ROOT_PASSWORD=cybage@123",
    "MYSQL_PASSWORD=cybage@123",
    "MYSQL_USER=prod_user",
    "MYSQL_DATABASE=prod",
    "MYSQL_PRIVILEGES=[ALL PRIVILEGES]"
  ]
  ports {
    internal = "3305"
  }
}
