terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.10.0"
    }
    mysql = {
      source = "winebarrel/mysql"
      version = "1.9.0-p6"
    }
  }
}


resource "docker_container" "stg_db" {
  name  = "stg_db"
  image = "mysql:latest"
  env = [
    "MYSQL_ROOT_PASSWORD=cybage@123",
    "MYSQL_PASSWORD=cybage@123",
    "MYSQL_USER=stg_user",
    "MYSQL_DATABASE=stg",
    "MYSQL_PRIVILEGES=[ALL PRIVILEGES]"
  ]
  ports {
    internal = "3307"
  }
}