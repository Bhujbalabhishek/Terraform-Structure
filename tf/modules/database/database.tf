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
