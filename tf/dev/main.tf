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


resource "docker_container" "db2" {
  name  = "db2"
  image = "mysql:latest"
  env = [
    "MYSQL_ROOT_PASSWORD=cybage@123",
    "MYSQL_PASSWORD=cybage@123",
    "MYSQL_USER=test",
    "MYSQL_DATABASE=wordpress",
    "MYSQL_PRIVILEGES=[ALL PRIVILEGES]"
  ]
  ports {
    internal = "3308"
  }
}
